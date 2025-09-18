import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/customer.dart';
import '../../domain/entities/order.dart';
import '../../domain/services/order_service.dart';

part 'orders_cubit.freezed.dart';
part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final OrderService _orderService;

  OrdersCubit(this._orderService) : super(const OrdersState.initial());

  Future<void> loadPendingOrders() async {
    emit(const OrdersState.loading());
    try {
      final orders = await _orderService.getPendingOrders();
      emit(OrdersState.loaded(orders: orders));
    } catch (error) {
      emit(OrdersState.error(message: error.toString()));
    }
  }

  Future<void> createOrder({
    required Customer customer,
    required List<OrderItem> items,
    String? notes,
    int tableNumber = 0,
  }) async {
    emit(const OrdersState.creating());
    try {
      final order = await _orderService.createOrder(
        customer: customer,
        items: items,
        notes: notes,
        tableNumber: tableNumber,
      );
      emit(OrdersState.orderCreated(order: order));
      await loadPendingOrders();
    } catch (error) {
      emit(OrdersState.error(message: error.toString()));
    }
  }

  Future<void> completeOrder(String orderId) async {
    try {
      final completedOrder = await _orderService.completeOrder(orderId);
      emit(OrdersState.orderCompleted(order: completedOrder));
      await loadPendingOrders();
    } catch (error) {
      emit(OrdersState.error(message: error.toString()));
    }
  }

  Future<void> startOrder(String orderId) async {
    try {
      final inProgressOrder = await _orderService.startOrder(orderId);
      emit(OrdersState.orderUpdated(order: inProgressOrder));
      await loadPendingOrders();
    } catch (error) {
      emit(OrdersState.error(message: error.toString()));
    }
  }

  Future<void> cancelOrder(String orderId) async {
    try {
      final cancelledOrder = await _orderService.cancelOrder(orderId);
      emit(OrdersState.orderCancelled(order: cancelledOrder));
      await loadPendingOrders();
    } catch (error) {
      emit(OrdersState.error(message: error.toString()));
    }
  }

  Future<void> getOrderById(String orderId) async {
    emit(const OrdersState.loading());
    try {
      final order = await _orderService.getOrderById(orderId);
      if (order != null) {
        emit(OrdersState.orderDetails(order: order));
      } else {
        emit(const OrdersState.error(message: 'Order not found'));
      }
    } catch (error) {
      emit(OrdersState.error(message: error.toString()));
    }
  }

  void clearError() {
    if (state is OrdersError) {
      emit(const OrdersState.initial());
    }
  }

  void reset() {
    emit(const OrdersState.initial());
  }
}
