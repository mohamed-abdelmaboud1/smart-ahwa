import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class DashboardEmptyState extends StatelessWidget {
  const DashboardEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.brown.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.receipt_long_outlined,
            size: 48,
            color: AppColors.brown.withValues(alpha: 0.5),
          ),
          const Gap(12),
          Text(
            'No pending orders',
            style: AppStyles.semiBold18(color: AppColors.brown),
          ),
          const Gap(6),
          Text(
            'New orders will appear here',
            style: AppStyles.regular14(color: AppColors.brown.withValues(alpha: 0.6)),
          ),
        ],
      ),
    );
  }
}
