import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ReportsLoadingState extends StatelessWidget {
  const ReportsLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.brown),
          ),
          const Gap(16),
          Text(
            'Loading reports...',
            style: AppStyles.medium16(color: AppColors.brown.withValues(alpha: 0.7)),
          ),
        ],
      ),
    );
  }
}
