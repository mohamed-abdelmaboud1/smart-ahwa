import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';

class ReportsErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const ReportsErrorState({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.red.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red[700],
            size: 24,
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Error Loading Reports',
                  style: AppStyles.semiBold16(color: Colors.red[700]),
                ),
                const Gap(4),
                Text(
                  message,
                  style: AppStyles.regular14(color: Colors.red[600]),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: onRetry,
            child: Text(
              'Retry',
              style: AppStyles.semiBold14(color: Colors.red[700]),
            ),
          ),
        ],
      ),
    );
  }
}
