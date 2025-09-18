part of 'orders_cubit.dart';

/// Orders state using freezed for immutability and type safety
/// Follows good state management practices with clear state definitions
@freezed
class OrdersState with _$OrdersState {
  /// Initial state
  const factory OrdersState.initial() = OrdersInitial;

  /// Loading state for general operations
  const factory OrdersState.loading() = OrdersLoading;

  /// Creating new order state
  const factory OrdersState.creating() = OrdersCreating;

  /// Orders loaded successfully
  const factory OrdersState.loaded({
    required List<Order> orders,
  }) = OrdersLoaded;

  /// New order created successfully
  const factory OrdersState.orderCreated({
    required Order order,
  }) = OrderCreated;

  /// Order completed successfully
  const factory OrdersState.orderCompleted({
    required Order order,
  }) = OrderCompleted;

  /// Order updated (status changed)
  const factory OrdersState.orderUpdated({
    required Order order,
  }) = OrderUpdated;

  /// Order cancelled
  const factory OrdersState.orderCancelled({
    required Order order,
  }) = OrderCancelled;

  /// Order details loaded
  const factory OrdersState.orderDetails({
    required Order order,
  }) = OrderDetails;

  /// Error state
  const factory OrdersState.error({
    required String message,
  }) = OrdersError;
}
