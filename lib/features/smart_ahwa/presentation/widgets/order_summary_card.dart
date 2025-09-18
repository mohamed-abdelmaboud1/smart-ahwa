import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/entities/order.dart';

class OrderSummaryCard extends StatelessWidget {
  final List<OrderItem> orderItems;

  const OrderSummaryCard({
    super.key,
    required this.orderItems,
  });

  @override
  Widget build(BuildContext context) {
    if (orderItems.isEmpty) return const SizedBox.shrink();

    final totalAmount = orderItems.fold<double>(
      0.0,
      (sum, item) => sum + item.totalPrice,
    );

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.brown.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Summary',
            style: AppStyles.bold18(color: AppColors.brown),
          ),
          const Gap(12),
          ...orderItems.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '${item.quantity}x ${item.drinkType.nameArabic}',
                      style: AppStyles.regular14(
                        color: AppColors.brown.withValues(alpha: 0.8),
                      ),
                    ),
                  ),
                  Text(
                    '\$${item.totalPrice.toStringAsFixed(2)}',
                    style: AppStyles.semiBold14(color: AppColors.brown),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: AppStyles.bold16(color: AppColors.brown)),
              Text(
                '\$${totalAmount.toStringAsFixed(2)}',
                style: AppStyles.bold18(color: AppColors.brown),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
