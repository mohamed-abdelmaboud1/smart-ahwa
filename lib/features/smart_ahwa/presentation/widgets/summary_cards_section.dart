import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'stat_card.dart';

class SummaryCardsSection extends StatelessWidget {
  final Map<String, dynamic>? summary;

  const SummaryCardsSection({
    super.key,
    required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    if (summary == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today\'s Summary',
          style: AppStyles.bold20(color: AppColors.brown),
        ),
        const Gap(16),
        Row(
          children: [
            Expanded(
              child: StatCard(
                title: 'Total Orders',
                value: '${summary!['totalOrders'] ?? 0}',
                icon: Icons.receipt_long,
                color: Colors.blue,
              ),
            ),
            const Gap(16),
            Expanded(
              child: StatCard(
                title: 'Revenue',
                value: '\$${(summary!['totalRevenue'] ?? 0.0).toStringAsFixed(2)}',
                icon: Icons.attach_money,
                color: Colors.green,
              ),
            ),
          ],
        ),
        const Gap(16),
        StatCard(
          title: 'Items Sold',
          value: '${summary!['totalItemsSold'] ?? 0}',
          icon: Icons.local_cafe,
          color: Colors.orange,
        ),
      ],
    );
  }
}
