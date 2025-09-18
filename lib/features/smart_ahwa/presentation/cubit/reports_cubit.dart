import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/order.dart';
import '../../domain/services/order_service.dart';
import '../../domain/services/report_service.dart';

part 'reports_state.dart';
part 'reports_cubit.freezed.dart';

class ReportsCubit extends Cubit<ReportsState> {
  final ReportService _reportService;
  final OrderService _orderService;

  ReportsCubit({
    required ReportService reportService,
    required OrderService orderService,
  }) : _reportService = reportService,
       _orderService = orderService,
       super(const ReportsState.initial());

  Future<void> loadTodaysSummary() async {
    emit(const ReportsState.loading());

    try {
      final summary = await _reportService.getTodaysSummary();
      emit(ReportsState.summaryLoaded(summary: summary));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  Future<void> loadDailySummary(DateTime date) async {
    emit(const ReportsState.loading());

    try {
      final summary = await _reportService.getDailySummary(date);
      emit(ReportsState.summaryLoaded(summary: summary));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  Future<void> loadTodaysTopSellingDrinks({int limit = 5}) async {
    emit(const ReportsState.loading());

    try {
      final topSellingDrinks = await _reportService.getTodaysTopSellingDrinks(
        limit: limit,
      );
      emit(ReportsState.topSellingDrinksLoaded(drinks: topSellingDrinks));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  Future<void> loadTopSellingDrinksForDate(
    DateTime date, {
    int limit = 5,
  }) async {
    emit(const ReportsState.loading());

    try {
      final topSellingDrinks = await _reportService.getTopSellingDrinksForDate(
        date,
        limit: limit,
      );
      emit(ReportsState.topSellingDrinksLoaded(drinks: topSellingDrinks));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  Future<void> loadTodaysPerformanceMetrics() async {
    emit(const ReportsState.loading());

    try {
      final metrics = await _reportService.getPerformanceMetrics(
        DateTime.now(),
      );
      emit(ReportsState.performanceMetricsLoaded(metrics: metrics));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  Future<void> loadPerformanceMetricsForDate(DateTime date) async {
    emit(const ReportsState.loading());

    try {
      final metrics = await _reportService.getPerformanceMetrics(date);
      emit(ReportsState.performanceMetricsLoaded(metrics: metrics));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  Future<void> loadSummaryForDateRange(
    DateTime startDate,
    DateTime endDate,
  ) async {
    emit(const ReportsState.loading());

    try {
      final summaries = await _reportService.getSummaryForDateRange(
        startDate,
        endDate,
      );
      emit(ReportsState.dateRangeSummaryLoaded(summaries: summaries));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }



  Future<void> loadPeakHoursForDate(DateTime date) async {
    emit(const ReportsState.loading());

    try {
      final peakHours = await _reportService.getPeakHoursAnalysis(date);
      emit(ReportsState.peakHoursLoaded(peakHours: peakHours));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  Future<void> loadTodaysAverageOrderValue() async {
    try {
      final averageOrderValue = await _reportService.getAverageOrderValue(
        DateTime.now(),
      );
      emit(ReportsState.averageOrderValueLoaded(value: averageOrderValue));
    } catch (error) {
      emit(ReportsState.error(message: error.toString()));
    }
  }

  void clearError() {
    if (state is ReportsError) {
      emit(const ReportsState.initial());
    }
  }

  
    Future<void> loadOrdersByStatus() async {
      emit(const ReportsState.loading());

      try {
        final allOrders = await _orderService.getAllOrders();
        final ordersByStatus = <OrderStatus, List<Order>>{};

        for (final status in OrderStatus.values) {
          ordersByStatus[status] =
              allOrders.where((order) => order.status == status).toList();
        }

        emit(ReportsState.ordersByStatusLoaded(ordersByStatus: ordersByStatus));
      } catch (error) {
        emit(ReportsState.error(message: error.toString()));
      }
    }

    Future<void> updateOrderStatus(Order order, OrderStatus newStatus) async {
      try {
        Order updatedOrder;
        switch (newStatus) {
          case OrderStatus.inProgress:
            updatedOrder = order.markAsInProgress();
            break;
          case OrderStatus.completed:
            updatedOrder = order.markAsCompleted();
            break;
          case OrderStatus.cancelled:
            updatedOrder = order.markAsCancelled();
            break;
          case OrderStatus.pending:
            updatedOrder = order.copyWith(status: OrderStatus.pending);
            break;
        }

        await _orderService.updateOrder(updatedOrder);
        await loadOrdersByStatus();
      } catch (error) {
        emit(ReportsState.error(message: error.toString()));
      }
    }
  }

