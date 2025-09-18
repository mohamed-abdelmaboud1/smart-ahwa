import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/entities/order.dart';
import '../cubit/orders_cubit.dart';


class PendingOrdersList extends StatelessWidget {
  final List<Order> orders;

  const PendingOrdersList({
    super.key,
    required this.orders,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: orders.map((order) => _OrderCard(order: order)).toList(),
    );
  }
}

class _OrderCard extends StatelessWidget {
  final Order order;

  const _OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.brown.withValues(alpha: 0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.brown.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const Gap(12),
          _buildOrderItems(),
          const Gap(16),
          _buildFooter(),
          if (order.notes?.isNotEmpty ?? false) ...[
            const Gap(12),
            _buildNotes(),
          ],
          const Gap(16),
          _buildActionButtons(context),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              order.customer.name,
              style: AppStyles.bold18(color: AppColors.brown),
            ),
            Text(
              'Order #${order.id}',
              style: AppStyles.medium14(color: AppColors.brown.withValues(alpha: 0.6)),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: _getStatusColor().withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: _getStatusColor().withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Text(
                order.status.displayName,
                style: AppStyles.semiBold14(color: _getStatusColor()).copyWith(fontSize: 12.sp),
              ),
            ),
            const Gap(4),
            Text(
              _getTimeAgo(),
              style: AppStyles.regular12(color: AppColors.brown.withValues(alpha: 0.5)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOrderItems() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Items:',
          style: AppStyles.semiBold14(color: AppColors.brown.withValues(alpha: 0.8)),
        ),
        const Gap(8),
        ...order.items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: AppColors.brown.withValues(alpha: 0.6),
                  shape: BoxShape.circle,
                ),
              ),
              const Gap(8),
              Expanded(
                child: Text(
                  '${item.quantity}x ${item.drinkType.nameArabic}',
                  style: AppStyles.regular14(color: AppColors.brown.withValues(alpha: 0.8)),
                ),
              ),
              Text(
                '\$${item.totalPrice.toStringAsFixed(2)}',
                style: AppStyles.semiBold14(color: AppColors.brown),
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (order.tableNumber > 0) ...[
              Text(
                'Table ${order.tableNumber}',
                style: AppStyles.semiBold14(color: AppColors.brown.withValues(alpha: 0.8)),
              ),
            ] else ...[
              Text(
                'Takeaway',
                style: AppStyles.semiBold14(color: AppColors.brown.withValues(alpha: 0.8)),
              ),
            ],
          ],
        ),
        Text(
          'Total: \$${order.totalAmount.toStringAsFixed(2)}',
          style: AppStyles.bold16(color: AppColors.brown),
        ),
      ],
    );
  }

  Widget _buildNotes() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.brown.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.brown.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Special Instructions:',
            style: AppStyles.semiBold14(color: AppColors.brown.withValues(alpha: 0.8)).copyWith(fontSize: 12.sp),
          ),
          const Gap(4),
          Text(
            order.notes!,
            style: AppStyles.regular14(color: AppColors.brown.withValues(alpha: 0.9)),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _ActionButton(
            text: 'Complete',
            icon: Icons.check_circle_outline,
            color: Colors.green,
            onPressed: () {
              context.read<OrdersCubit>().completeOrder(order.id);
            },
          ),
        ),
        const Gap(12),
        Expanded(
          child: _ActionButton(
            text: 'Start Order',
            icon: Icons.play_circle_outline,
            color: Colors.blue,
            onPressed: () {
              context.read<OrdersCubit>().startOrder(order.id);
            },
          ),
        ),
      ],
    );
  }

  Color _getStatusColor() {
    switch (order.status) {
      case OrderStatus.pending:
        return Colors.orange;
      case OrderStatus.inProgress:
        return Colors.blue;
      case OrderStatus.completed:
        return Colors.green;
      case OrderStatus.cancelled:
        return Colors.red;
    }
  }

  String _getTimeAgo() {
    final duration = DateTime.now().difference(order.createdAt);
    
    if (duration.inMinutes < 60) {
      return '${duration.inMinutes}m ago';
    } else if (duration.inHours < 24) {
      return '${duration.inHours}h ago';
    } else {
      return '${duration.inDays}d ago';
    }
  }
}

class _ActionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const _ActionButton({
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 16),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color.withValues(alpha: 0.1),
        foregroundColor: color,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: color.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        textStyle: AppStyles.bold13(),
      ),
    );
  }
}
