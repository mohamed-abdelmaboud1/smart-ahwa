import '../entities/order.dart';

/// Abstract repository interface for Order data access operations
/// Follows Interface Segregation Principle - contains only methods needed for order management
abstract class OrderRepository {
  /// Get all orders
  Future<List<Order>> getAllOrders();
  
  /// Get orders by status
  Future<List<Order>> getOrdersByStatus(OrderStatus status);
  
  /// Get pending orders (most commonly used)
  Future<List<Order>> getPendingOrders();
  
  /// Get completed orders for a specific date
  Future<List<Order>> getOrdersByDate(DateTime date);
  
  /// Get a specific order by ID
  Future<Order?> getOrderById(String id);
  
  /// Create a new order
  Future<String> createOrder(Order order);
  
  /// Update an existing order
  Future<bool> updateOrder(Order order);
  
  /// Delete an order
  Future<bool> deleteOrder(String id);
  
  /// Get orders for analytics/reporting
  Future<List<Order>> getOrdersInDateRange(DateTime startDate, DateTime endDate);
}
