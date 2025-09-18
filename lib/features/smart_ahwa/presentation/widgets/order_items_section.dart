import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/entities/order.dart';
import 'drink_selection_widget.dart';

class OrderItemsSection extends StatelessWidget {
  final Function(List<OrderItem>) onItemsChanged;

  const OrderItemsSection({
    super.key,
    required this.onItemsChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Order Items', style: AppStyles.bold20(color: AppColors.brown)),
        const Gap(16),
        DrinkSelectionWidget(
          onItemsChanged: onItemsChanged,
        ),
      ],
    );
  }
}
