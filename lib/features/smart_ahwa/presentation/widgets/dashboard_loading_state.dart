import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class DashboardLoadingState extends StatelessWidget {
  const DashboardLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.brown),
          ),
          const Gap(16),
          Text(
            'Loading orders...',
            style: AppStyles.medium16(color: AppColors.brown.withValues(alpha: 0.7)),
          ),
        ],
      ),
    );
  }
}
