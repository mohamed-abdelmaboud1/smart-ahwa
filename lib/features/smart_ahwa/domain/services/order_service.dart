import '../entities/order.dart';
import '../entities/customer.dart';
import '../entities/drink_type.dart';

abstract class OrderService {
  Future<Order> createOrder({
    required Customer customer,
    required List<OrderItem> items,
    String? notes,
    int tableNumber,
  });
  
  Future<List<Order>> getPendingOrders();
  
  Future<List<Order>> getAllOrders();
  
  Future<Order> updateOrder(Order order);
  
  Future<Order> completeOrder(String orderId);
  
  Future<Order> startOrder(String orderId);
  
  Future<Order> cancelOrder(String orderId);
  
  Future<Order?> getOrderById(String orderId);
  
  bool validateOrder(List<OrderItem> items);
  
  int calculateTotalPreparationTime(List<OrderItem> items);
  
  bool checkDrinkAvailability(List<DrinkType> drinkTypes);
}
