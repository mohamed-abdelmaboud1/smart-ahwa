import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'summary_cards_section.dart';
import 'top_selling_drinks_card.dart';

class ReportsMetricsDisplay extends StatelessWidget {
  final Map<String, dynamic> metrics;

  const ReportsMetricsDisplay({
    super.key,
    required this.metrics,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SummaryCardsSection(summary: metrics['summary']),
        const Gap(24),
        if (metrics['topSellingDrinks'] != null && 
            (metrics['topSellingDrinks'] as List).isNotEmpty) ...[
          Text(
            'Top Selling Drinks',
            style: AppStyles.bold20(color: AppColors.brown),
          ),
          const Gap(16),
          TopSellingDrinksCard(drinks: metrics['topSellingDrinks']),
        ],
      ],
    );
  }
}
