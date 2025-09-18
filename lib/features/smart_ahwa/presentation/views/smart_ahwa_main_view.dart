import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../cubit/smart_ahwa_nav_cubit.dart';
import '../widgets/smart_ahwa_bottom_nav.dart';
import 'add_order_view.dart';
import 'dashboard_view.dart';
import 'reports_view.dart';

class SmartAhwaMainView extends StatelessWidget {
  const SmartAhwaMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SmartAhwaNavCubit(),
      child: const SmartAhwaMainViewContent(),
    );
  }
}

class SmartAhwaMainViewContent extends StatelessWidget {
  const SmartAhwaMainViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmartAhwaNavCubit, int>(
      builder: (context, selectedIndex) {
        return Scaffold(
          backgroundColor: AppColors.lightWhite,
          body: IndexedStack(
            index: selectedIndex,
            children: const [DashboardView(), AddOrderView(), ReportsView()],
          ),
          bottomNavigationBar: SmartAhwaBottomNav(
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              context.read<SmartAhwaNavCubit>().changeTab(index);
            },
          ),
        );
      },
    );
  }
}
