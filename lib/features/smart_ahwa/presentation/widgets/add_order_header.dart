import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class AddOrderHeader extends StatelessWidget {
  const AddOrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('New Order', style: AppStyles.bold24(color: AppColors.brown)),
        Text(
          'Add a new order to the queue',
          style: AppStyles.medium16(
            color: AppColors.brown.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
