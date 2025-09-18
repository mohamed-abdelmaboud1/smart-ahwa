import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

/// Dashboard Header Widget
/// Displays app name, current date and time
/// Reuses the styling from the original home header
class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final timeString = '${_formatTime(now.hour)}:${_formatTime(now.minute)}';
    final dateString = '${_getWeekday(now.weekday)}, ${_getMonth(now.month)} ${now.day}';

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // App title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Smart Ahwa',
                  style: AppStyles.bold24(color: AppColors.brown),
                ),
                Text(
                  'Manager',
                  style: AppStyles.medium16(color: AppColors.brown.withValues(alpha: 0.7)),
                ),
              ],
            ),
            // Time and date
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  timeString,
                  style: AppStyles.bold24(color: AppColors.brown),
                ),
                const Gap(2),
                Text(
                  dateString,
                  style: AppStyles.medium14(color: AppColors.brown.withValues(alpha: 0.6)),
                ),
              ],
            ),
          ],
        ),
        const Gap(16),
        // Welcome message or status
        Container(

          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.brown.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: AppColors.brown.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Text(
            _getGreetingMessage(now.hour),
            style: AppStyles.semiBold14(color: AppColors.brown),
          ),
        ),
      ],
    );
  }

  String _formatTime(int time) {
    return time.toString().padLeft(2, '0');
  }

  String _getWeekday(int weekday) {
    const weekdays = [
      'Monday', 'Tuesday', 'Wednesday', 'Thursday',
      'Friday', 'Saturday', 'Sunday'
    ];
    return weekdays[weekday - 1];
  }

  String _getMonth(int month) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }

  String _getGreetingMessage(int hour) {
    if (hour < 12) {
      return 'Good Morning! ☕';
    } else if (hour < 17) {
      return 'Good Afternoon! 🌅';
    } else {
      return 'Good Evening! 🌙';
    }
  }
}
