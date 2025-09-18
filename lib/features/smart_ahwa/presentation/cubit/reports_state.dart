part of 'reports_cubit.dart';

@freezed
class ReportsState with _$ReportsState {
  const factory ReportsState.initial() = ReportsInitial;

  const factory ReportsState.loading() = ReportsLoading;

  const factory ReportsState.summaryLoaded({
    required DailySummary summary,
  }) = SummaryLoaded;

  const factory ReportsState.topSellingDrinksLoaded({
    required List<TopSellingDrink> drinks,
  }) = TopSellingDrinksLoaded;

  const factory ReportsState.performanceMetricsLoaded({
    required Map<String, dynamic> metrics,
  }) = PerformanceMetricsLoaded;

  const factory ReportsState.dateRangeSummaryLoaded({
    required List<DailySummary> summaries,
  }) = DateRangeSummaryLoaded;

  const factory ReportsState.peakHoursLoaded({
    required Map<int, int> peakHours,
  }) = PeakHoursLoaded;

  const factory ReportsState.averageOrderValueLoaded({
    required double value,
  }) = AverageOrderValueLoaded;

  const factory ReportsState.ordersByStatusLoaded({
    required Map<OrderStatus, List<Order>> ordersByStatus,
  }) = OrdersByStatusLoaded;

  const factory ReportsState.error({
    required String message,
  }) = ReportsError;
}
