import '../../domain/entities/drink_type.dart';
import '../../domain/repositories/order_repository.dart';
import '../../domain/services/report_service.dart';

/// Concrete implementation of ReportService
/// Follows Single Responsibility - handles only reporting and analytics logic
/// Follows Dependency Inversion - depends on OrderRepository abstraction
class ReportServiceImpl implements ReportService {
  final OrderRepository _orderRepository;

  const ReportServiceImpl({
    required OrderRepository orderRepository,
  }) : _orderRepository = orderRepository;

  @override
  Future<DailySummary> getTodaysSummary() async {
    return getDailySummary(DateTime.now());
  }

  @override
  Future<DailySummary> getDailySummary(DateTime date) async {
    final orders = await _orderRepository.getOrdersByDate(date);
    final completedOrders = orders.where((order) => order.isCompleted).toList();

    final totalOrders = completedOrders.length;
    final totalRevenue = completedOrders.fold<double>(
      0.0,
      (sum, order) => sum + order.totalAmount,
    );
    
    final totalItemsSold = completedOrders.fold<int>(
      0,
      (sum, order) => sum + order.totalItems,
    );

    // Calculate average preparation time
    Duration averagePreparationTime = Duration.zero;
    if (completedOrders.isNotEmpty) {
      final totalPreparationMinutes = completedOrders.fold<int>(
        0,
        (sum, order) => sum + order.estimatedPreparationMinutes,
      );
      averagePreparationTime = Duration(
        minutes: totalPreparationMinutes ~/ completedOrders.length,
      );
    }

    return DailySummary(
      date: date,
      totalOrders: totalOrders,
      totalRevenue: totalRevenue,
      totalItemsSold: totalItemsSold,
      averagePreparationTime: averagePreparationTime,
    );
  }

  @override
  Future<List<DailySummary>> getSummaryForDateRange(
    DateTime startDate,
    DateTime endDate,
  ) async {
    final summaries = <DailySummary>[];
    
    DateTime currentDate = startDate;
    while (currentDate.isBefore(endDate) || currentDate.isAtSameMomentAs(endDate)) {
      final summary = await getDailySummary(currentDate);
      summaries.add(summary);
      currentDate = currentDate.add(const Duration(days: 1));
    }

    return summaries;
  }

  @override
  Future<List<TopSellingDrink>> getTodaysTopSellingDrinks({int limit = 5}) async {
    return getTopSellingDrinksForDate(DateTime.now(), limit: limit);
  }

  @override
  Future<List<TopSellingDrink>> getTopSellingDrinksForDate(
    DateTime date, {
    int limit = 5,
  }) async {
    final orders = await _orderRepository.getOrdersByDate(date);
    final completedOrders = orders.where((order) => order.isCompleted).toList();

    // Map to store drink sales data
    final drinkSalesMap = <String, _DrinkSalesData>{};

    // Aggregate sales data
    for (final order in completedOrders) {
      for (final item in order.items) {
        final drinkId = item.drinkType.id;
        
        if (drinkSalesMap.containsKey(drinkId)) {
          final existing = drinkSalesMap[drinkId]!;
          drinkSalesMap[drinkId] = _DrinkSalesData(
            drinkType: existing.drinkType,
            quantitySold: existing.quantitySold + item.quantity,
            totalRevenue: existing.totalRevenue + item.totalPrice,
          );
        } else {
          drinkSalesMap[drinkId] = _DrinkSalesData(
            drinkType: item.drinkType,
            quantitySold: item.quantity,
            totalRevenue: item.totalPrice,
          );
        }
      }
    }

    // Convert to TopSellingDrink objects and sort by quantity sold
    final topSellingDrinks = drinkSalesMap.values
        .map((data) => TopSellingDrink(
              drinkType: data.drinkType,
              quantitySold: data.quantitySold,
              totalRevenue: data.totalRevenue,
            ))
        .toList();

    // Sort by quantity sold (descending)
    topSellingDrinks.sort((a, b) => b.quantitySold.compareTo(a.quantitySold));

    // Return limited results
    return topSellingDrinks.take(limit).toList();
  }

  @override
  Future<List<TopSellingDrink>> getTopSellingDrinksForDateRange(
    DateTime startDate,
    DateTime endDate, {
    int limit = 5,
  }) async {
    final orders = await _orderRepository.getOrdersInDateRange(startDate, endDate);
    final completedOrders = orders.where((order) => order.isCompleted).toList();

    final drinkSalesMap = <String, _DrinkSalesData>{};

    for (final order in completedOrders) {
      for (final item in order.items) {
        final drinkId = item.drinkType.id;
        
        if (drinkSalesMap.containsKey(drinkId)) {
          final existing = drinkSalesMap[drinkId]!;
          drinkSalesMap[drinkId] = _DrinkSalesData(
            drinkType: existing.drinkType,
            quantitySold: existing.quantitySold + item.quantity,
            totalRevenue: existing.totalRevenue + item.totalPrice,
          );
        } else {
          drinkSalesMap[drinkId] = _DrinkSalesData(
            drinkType: item.drinkType,
            quantitySold: item.quantity,
            totalRevenue: item.totalPrice,
          );
        }
      }
    }

    final topSellingDrinks = drinkSalesMap.values
        .map((data) => TopSellingDrink(
              drinkType: data.drinkType,
              quantitySold: data.quantitySold,
              totalRevenue: data.totalRevenue,
            ))
        .toList();

    topSellingDrinks.sort((a, b) => b.quantitySold.compareTo(a.quantitySold));
    return topSellingDrinks.take(limit).toList();
  }

  @override
  Future<double> getAverageOrderValue(DateTime date) async {
    final orders = await _orderRepository.getOrdersByDate(date);
    final completedOrders = orders.where((order) => order.isCompleted).toList();

    if (completedOrders.isEmpty) return 0.0;

    final totalRevenue = completedOrders.fold<double>(
      0.0,
      (sum, order) => sum + order.totalAmount,
    );

    return totalRevenue / completedOrders.length;
  }

  @override
  Future<Map<int, int>> getPeakHoursAnalysis(DateTime date) async {
    final orders = await _orderRepository.getOrdersByDate(date);
    final completedOrders = orders.where((order) => order.isCompleted).toList();

    final hourlyOrderCounts = <int, int>{};

    for (final order in completedOrders) {
      final hour = order.createdAt.hour;
      hourlyOrderCounts[hour] = (hourlyOrderCounts[hour] ?? 0) + 1;
    }

    return hourlyOrderCounts;
  }

  @override
  Future<Map<String, dynamic>> getPerformanceMetrics(DateTime date) async {
    final summary = await getDailySummary(date);
    final averageOrderValue = await getAverageOrderValue(date);
    final topSellingDrinks = await getTopSellingDrinksForDate(date, limit: 3);
    final peakHours = await getPeakHoursAnalysis(date);

    // Find peak hour
    int peakHour = 0;
    int maxOrders = 0;
    peakHours.forEach((hour, count) {
      if (count > maxOrders) {
        maxOrders = count;
        peakHour = hour;
      }
    });

    return {
      'summary': {
        'totalOrders': summary.totalOrders,
        'totalRevenue': summary.totalRevenue,
        'totalItemsSold': summary.totalItemsSold,
        'averagePreparationTime': summary.averagePreparationTime.inMinutes,
      },
      'averageOrderValue': averageOrderValue,
      'topSellingDrinks': topSellingDrinks.map((drink) => {
        'name': drink.drinkType.nameArabic,
        'quantity': drink.quantitySold,
        'revenue': drink.totalRevenue,
      }).toList(),
      'peakHour': {
        'hour': peakHour,
        'orderCount': maxOrders,
      },
      'hourlyDistribution': peakHours,
    };
  }
}

/// Helper class for internal drink sales data aggregation
class _DrinkSalesData {
  final DrinkType drinkType;
  final int quantitySold;
  final double totalRevenue;

  const _DrinkSalesData({
    required this.drinkType,
    required this.quantitySold,
    required this.totalRevenue,
  });
}
