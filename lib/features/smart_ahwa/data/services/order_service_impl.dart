import '../../domain/entities/customer.dart';
import '../../domain/entities/drink_type.dart';
import '../../domain/entities/order.dart';
import '../../domain/repositories/order_repository.dart';
import '../../domain/services/order_service.dart';

class OrderServiceImpl implements OrderService {
  final OrderRepository _orderRepository;

  const OrderServiceImpl({
    required OrderRepository orderRepository,
  }) : _orderRepository = orderRepository;

  @override
  Future<Order> createOrder({
    required Customer customer,
    required List<OrderItem> items,
    String? notes,
    int tableNumber = 0,
  }) async {
    // Validate the order before creating
    if (!validateOrder(items)) {
      throw Exception('Invalid order: Order must contain at least one item');
    }

    // Check drink availability
    final drinkTypes = items.map((item) => item.drinkType).toList();
    if (!checkDrinkAvailability(drinkTypes)) {
      throw Exception('Some drinks are not available');
    }

    // Create the order
    final order = Order(
      id: '', // Repository will generate ID
      customer: customer,
      items: items,
      createdAt: DateTime.now(),
      notes: notes,
      tableNumber: tableNumber,
    );

    // Save to repository
    final orderId = await _orderRepository.createOrder(order);
    final createdOrder = order.copyWith(id: orderId);

    return createdOrder;
  }

  @override
  Future<List<Order>> getPendingOrders() async {
    return await _orderRepository.getPendingOrders();
  }

  @override
  Future<List<Order>> getAllOrders() async {
    return await _orderRepository.getAllOrders();
  }

  @override
  Future<Order> updateOrder(Order order) async {
    await _orderRepository.updateOrder(order);
    return order;
  }

  @override
  Future<Order> completeOrder(String orderId) async {
    final order = await _orderRepository.getOrderById(orderId);
    if (order == null) {
      throw Exception('Order not found');
    }

    final completedOrder = order.markAsCompleted();
    await _orderRepository.updateOrder(completedOrder);

    return completedOrder;
  }

  @override
  Future<Order> startOrder(String orderId) async {
    final order = await _orderRepository.getOrderById(orderId);
    if (order == null) {
      throw Exception('Order not found');
    }

    final inProgressOrder = order.markAsInProgress();
    await _orderRepository.updateOrder(inProgressOrder);

    return inProgressOrder;
  }

  @override
  Future<Order> cancelOrder(String orderId) async {
    final order = await _orderRepository.getOrderById(orderId);
    if (order == null) {
      throw Exception('Order not found');
    }

    if (order.isCompleted) {
      throw Exception('Cannot cancel completed order');
    }

    final cancelledOrder = order.markAsCancelled();
    await _orderRepository.updateOrder(cancelledOrder);

    return cancelledOrder;
  }

  @override
  Future<Order?> getOrderById(String orderId) async {
    return await _orderRepository.getOrderById(orderId);
  }

  @override
  bool validateOrder(List<OrderItem> items) {
    // Order must have at least one item
    if (items.isEmpty) return false;

    // All items must have positive quantity
    for (final item in items) {
      if (item.quantity <= 0) return false;
      if (item.itemPrice < 0) return false;
    }

    return true;
  }

  @override
  int calculateTotalPreparationTime(List<OrderItem> items) {
    int maxTime = 0;

    for (final item in items) {
      final itemTime = item.drinkType.preparationTimeMinutes * item.quantity;
      if (itemTime > maxTime) {
        maxTime = itemTime;
      }
    }

    return maxTime;
  }

  @override
  bool checkDrinkAvailability(List<DrinkType> drinkTypes) {
    // Check if all drinks are available
    return drinkTypes.every((drink) => drink.isAvailable);
  }

  // Additional business logic methods

  /// Get orders that are taking longer than expected
  Future<List<Order>> getDelayedOrders() async {
    final pendingOrders = await getPendingOrders();
    final inProgressOrders = await _orderRepository.getOrdersByStatus(
      OrderStatus.inProgress,
    );

    final allActiveOrders = [...pendingOrders, ...inProgressOrders];
    const maxWaitTimeMinutes = 30;

    return allActiveOrders.where((order) {
      final waitTime = DateTime.now().difference(order.createdAt);
      return waitTime.inMinutes > maxWaitTimeMinutes;
    }).toList();
  }

  /// Get today's orders statistics
  Future<Map<String, int>> getTodayOrdersStats() async {
    final today = DateTime.now();
    final todayOrders = await _orderRepository.getOrdersByDate(today);

    final stats = <String, int>{
      'total': todayOrders.length,
      'pending': 0,
      'inProgress': 0,
      'completed': 0,
      'cancelled': 0,
    };

    for (final order in todayOrders) {
      switch (order.status) {
        case OrderStatus.pending:
          stats['pending'] = (stats['pending'] ?? 0) + 1;
          break;
        case OrderStatus.inProgress:
          stats['inProgress'] = (stats['inProgress'] ?? 0) + 1;
          break;
        case OrderStatus.completed:
          stats['completed'] = (stats['completed'] ?? 0) + 1;
          break;
        case OrderStatus.cancelled:
          stats['cancelled'] = (stats['cancelled'] ?? 0) + 1;
          break;
      }
    }

    return stats;
  }
}
