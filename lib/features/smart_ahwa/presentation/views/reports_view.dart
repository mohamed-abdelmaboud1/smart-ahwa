import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/service_locator.dart';
import '../cubit/reports_cubit.dart';
import '../widgets/comprehensive_reports_display.dart';
import '../widgets/reports_header.dart';

class ReportsView extends StatelessWidget {
  const ReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              ReportsCubit(reportService: getIt(), orderService: getIt()),
      child: const ReportsViewContent(),
    );
  }
}

class ReportsViewContent extends StatefulWidget {
  const ReportsViewContent({super.key});

  @override
  State<ReportsViewContent> createState() => _ReportsViewContentState();
}

class _ReportsViewContentState extends State<ReportsViewContent> {
  @override
  void initState() {
    super.initState();
    loadReports();
  }

  void loadReports() {
    context.read<ReportsCubit>().loadTodaysPerformanceMetrics();
    context.read<ReportsCubit>().loadOrdersByStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => loadReports(),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReportsHeader(),
                  const Gap(32),
                  CombinedReportsListener(child: Container()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
