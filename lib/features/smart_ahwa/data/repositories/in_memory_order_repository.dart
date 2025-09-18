import '../../domain/entities/order.dart';
import '../../domain/repositories/order_repository.dart';

/// In-memory implementation of OrderRepository
/// Follows Dependency Inversion - implements abstract interface
/// This can be easily replaced with a database implementation without changing dependent code
class InMemoryOrderRepository implements OrderRepository {
  // In-memory storage - in a real app, this would be a database
  final List<Order> _orders = [];
  int _nextId = 1;

  @override
  Future<List<Order>> getAllOrders() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 200));
    return List.from(_orders);
  }

  @override
  Future<List<Order>> getOrdersByStatus(OrderStatus status) async {
    await Future.delayed(const Duration(milliseconds: 150));
    return _orders.where((order) => order.status == status).toList();
  }

  @override
  Future<List<Order>> getPendingOrders() async {
    return getOrdersByStatus(OrderStatus.pending);
  }

  @override
  Future<List<Order>> getOrdersByDate(DateTime date) async {
    await Future.delayed(const Duration(milliseconds: 150));
    return _orders.where((order) {
      final orderDate = DateTime(
        order.createdAt.year,
        order.createdAt.month,
        order.createdAt.day,
      );
      final targetDate = DateTime(date.year, date.month, date.day);
      return orderDate.isAtSameMomentAs(targetDate);
    }).toList();
  }

  @override
  Future<Order?> getOrderById(String id) async {
    await Future.delayed(const Duration(milliseconds: 100));
    try {
      return _orders.firstWhere((order) => order.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String> createOrder(Order order) async {
    await Future.delayed(const Duration(milliseconds: 200));
    
    // Generate ID if not provided
    final orderId = order.id.isEmpty ? _nextId.toString() : order.id;
    final orderWithId = order.copyWith(id: orderId);
    
    _orders.add(orderWithId);
    _nextId++;
    
    return orderId;
  }

  @override
  Future<bool> updateOrder(Order order) async {
    await Future.delayed(const Duration(milliseconds: 150));
    
    final index = _orders.indexWhere((o) => o.id == order.id);
    if (index == -1) return false;
    
    _orders[index] = order;
    return true;
  }

  @override
  Future<bool> deleteOrder(String id) async {
    await Future.delayed(const Duration(milliseconds: 150));
    
    final index = _orders.indexWhere((order) => order.id == id);
    if (index == -1) return false;
    
    _orders.removeAt(index);
    return true;
  }

  @override
  Future<List<Order>> getOrdersInDateRange(DateTime startDate, DateTime endDate) async {
    await Future.delayed(const Duration(milliseconds: 200));
    
    return _orders.where((order) {
      return order.createdAt.isAfter(startDate.subtract(const Duration(days: 1))) &&
             order.createdAt.isBefore(endDate.add(const Duration(days: 1)));
    }).toList();
  }

  // Helper method for development - add sample data
  void addSampleOrders() {
    // This method can be used to populate sample data for demonstration
  }

  // Helper method for development - clear all orders
  void clearOrders() {
    _orders.clear();
    _nextId = 1;
  }

  // Helper method for development - get orders count
  int get ordersCount => _orders.length;
}
