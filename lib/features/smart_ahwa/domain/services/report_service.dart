import '../entities/drink_type.dart';

/// Data transfer object for daily sales summary
class DailySummary {
  final DateTime date;
  final int totalOrders;
  final double totalRevenue;
  final int totalItemsSold;
  final Duration averagePreparationTime;

  const DailySummary({
    required this.date,
    required this.totalOrders,
    required this.totalRevenue,
    required this.totalItemsSold,
    required this.averagePreparationTime,
  });
}

/// Data transfer object for top-selling drink information
class TopSellingDrink {
  final DrinkType drinkType;
  final int quantitySold;
  final double totalRevenue;

  const TopSellingDrink({
    required this.drinkType,
    required this.quantitySold,
    required this.totalRevenue,
  });
}

/// Abstract service interface for reporting and analytics operations
/// Follows Single Responsibility - handles only reporting business logic
/// Follows Interface Segregation - contains only reporting methods
abstract class ReportService {
  /// Get daily sales summary for today
  Future<DailySummary> getTodaysSummary();
  
  /// Get daily sales summary for a specific date
  Future<DailySummary> getDailySummary(DateTime date);
  
  /// Get sales summary for a date range
  Future<List<DailySummary>> getSummaryForDateRange(
    DateTime startDate, 
    DateTime endDate
  );
  
  /// Get top-selling drinks for today
  Future<List<TopSellingDrink>> getTodaysTopSellingDrinks({int limit = 5});
  
  /// Get top-selling drinks for a specific date
  Future<List<TopSellingDrink>> getTopSellingDrinksForDate(
    DateTime date, {
    int limit = 5
  });
  
  /// Get top-selling drinks for a date range
  Future<List<TopSellingDrink>> getTopSellingDrinksForDateRange(
    DateTime startDate, 
    DateTime endDate, {
    int limit = 5
  });
  
  /// Calculate average order value for a specific date
  Future<double> getAverageOrderValue(DateTime date);
  
  /// Get peak hours analysis for a date
  Future<Map<int, int>> getPeakHoursAnalysis(DateTime date);
  
  /// Generate performance metrics
  Future<Map<String, dynamic>> getPerformanceMetrics(DateTime date);
}
