import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../domain/entities/order.dart';
import '../cubit/reports_cubit.dart';
import 'orders_by_status_display.dart';
import 'reports_metrics_display.dart';

class ComprehensiveReportsDisplay extends StatelessWidget {
  final Map<String, dynamic>? metrics;
  final Map<OrderStatus, List<Order>>? ordersByStatus;

  const ComprehensiveReportsDisplay({
    super.key,
    this.metrics,
    this.ordersByStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (metrics != null) ...[
          ReportsMetricsDisplay(metrics: metrics!),
          const Gap(32),
        ],
        if (ordersByStatus != null) ...[
          Text(
            'Order Management',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(16),
          OrdersByStatusDisplay(ordersByStatus: ordersByStatus!),
        ],
      ],
    );
  }
}

class CombinedReportsState {
  final Map<String, dynamic>? metrics;
  final Map<OrderStatus, List<Order>>? ordersByStatus;
  final bool isLoading;
  final String? error;

  const CombinedReportsState({
    this.metrics,
    this.ordersByStatus,
    this.isLoading = false,
    this.error,
  });

  CombinedReportsState copyWith({
    Map<String, dynamic>? metrics,
    Map<OrderStatus, List<Order>>? ordersByStatus,
    bool? isLoading,
    String? error,
  }) {
    return CombinedReportsState(
      metrics: metrics ?? this.metrics,
      ordersByStatus: ordersByStatus ?? this.ordersByStatus,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class CombinedReportsListener extends StatefulWidget {
  final Widget child;

  const CombinedReportsListener({super.key, required this.child});

  @override
  State<CombinedReportsListener> createState() =>
      _CombinedReportsListenerState();
}

class _CombinedReportsListenerState extends State<CombinedReportsListener> {
  CombinedReportsState _combinedState = const CombinedReportsState();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReportsCubit, ReportsState>(
      listener: (context, state) {
        state.when(
          initial:
              () => setState(() {
                _combinedState = const CombinedReportsState();
              }),
          loading:
              () => setState(() {
                _combinedState = _combinedState.copyWith(isLoading: true);
              }),
          summaryLoaded: (summary) {},
          topSellingDrinksLoaded: (drinks) {},
          performanceMetricsLoaded:
              (metrics) => setState(() {
                _combinedState = _combinedState.copyWith(
                  metrics: metrics,
                  isLoading: false,
                );
              }),
          dateRangeSummaryLoaded: (summaries) {},
          peakHoursLoaded: (peakHours) {},
          averageOrderValueLoaded: (value) {},
          ordersByStatusLoaded:
              (ordersByStatus) => setState(() {
                _combinedState = _combinedState.copyWith(
                  ordersByStatus: ordersByStatus,
                  isLoading: false,
                );
              }),
          error:
              (message) => setState(() {
                _combinedState = _combinedState.copyWith(
                  error: message,
                  isLoading: false,
                );
              }),
        );
      },
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (_combinedState.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red),
            const Gap(16),
            Text(
              'Error: ${_combinedState.error}',
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            ElevatedButton(
              onPressed: () {
                context.read<ReportsCubit>().loadTodaysPerformanceMetrics();
                context.read<ReportsCubit>().loadOrdersByStatus();
              },
              child: Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (_combinedState.isLoading &&
        _combinedState.metrics == null &&
        _combinedState.ordersByStatus == null) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Gap(16),
            Text('Loading reports...'),
          ],
        ),
      );
    }

    return ComprehensiveReportsDisplay(
      metrics: _combinedState.metrics,
      ordersByStatus: _combinedState.ordersByStatus,
    );
  }
}
