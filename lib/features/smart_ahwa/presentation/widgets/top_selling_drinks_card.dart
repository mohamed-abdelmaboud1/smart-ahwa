import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class TopSellingDrinksCard extends StatelessWidget {
  final List<dynamic> drinks;

  const TopSellingDrinksCard({
    super.key,
    required this.drinks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.brown.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: drinks.take(5).map((drink) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.brown,
                    shape: BoxShape.circle,
                  ),
                ),
                const Gap(12),
                Expanded(
                  child: Text(
                    drink['name'] ?? 'Unknown',
                    style: AppStyles.semiBold14(color: AppColors.brown),
                  ),
                ),
                Text(
                  '${drink['quantity'] ?? 0} sold',
                  style: AppStyles.regular12(color: AppColors.brown.withValues(alpha: 0.6)),
                ),
                const Gap(8),
                Text(
                  '\$${(drink['revenue'] ?? 0.0).toStringAsFixed(2)}',
                  style: AppStyles.bold12(color: Colors.green.shade700),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
