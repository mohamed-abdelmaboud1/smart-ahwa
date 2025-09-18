import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ReportsEmptyState extends StatelessWidget {
  const ReportsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.bar_chart,
            size: 48,
            color: AppColors.brown.withValues(alpha: 0.5),
          ),
          const Gap(12),
          Text(
            'No data available',
            style: AppStyles.semiBold18(color: AppColors.brown),
          ),
          const Gap(6),
          Text(
            'Complete some orders to see reports',
            style: AppStyles.regular14(color: AppColors.brown.withValues(alpha: 0.6)),
          ),
        ],
      ),
    );
  }
}
