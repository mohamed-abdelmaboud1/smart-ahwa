import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/service_locator.dart';
import '../cubit/orders_cubit.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/pending_orders_section.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrdersCubit(getIt()),
      child: const DashboardViewContent(),
    );
  }
}

class DashboardViewContent extends StatefulWidget {
  const DashboardViewContent({super.key});

  @override
  State<DashboardViewContent> createState() => _DashboardViewContentState();
}

class _DashboardViewContentState extends State<DashboardViewContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DashboardHeader(),
                const Gap(32),
                PendingOrdersSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
