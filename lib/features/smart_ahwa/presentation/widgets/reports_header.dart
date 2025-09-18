import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ReportsHeader extends StatelessWidget {
  const ReportsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reports & Analytics',
          style: AppStyles.bold24(color: AppColors.brown),
        ),
        Text(
          'Today\'s performance overview',
          style: AppStyles.medium16(color: AppColors.brown.withValues(alpha: 0.7)),
        ),
      ],
    );
  }
}
