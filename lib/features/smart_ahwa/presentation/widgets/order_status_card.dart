import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/entities/order.dart';

class OrderStatusCard extends StatelessWidget {
  final OrderStatus status;
  final List<Order> orders;
  final Function(Order) onOrderTap;
  final Function(Order, OrderStatus) onStatusChange;

  const OrderStatusCard({
    super.key,
    required this.status,
    required this.orders,
    required this.onOrderTap,
    required this.onStatusChange,
  });

  Color get statusColor {
    switch (status) {
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

  IconData get statusIcon {
    switch (status) {
      case OrderStatus.pending:
        return Icons.schedule;
      case OrderStatus.inProgress:
        return Icons.hourglass_bottom;
      case OrderStatus.completed:
        return Icons.check_circle;
      case OrderStatus.cancelled:
        return Icons.cancel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: statusColor.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Icon(statusIcon, color: statusColor, size: 20),
                const Gap(8),
                Text(
                  status.displayName,
                  style: AppStyles.bold16(color: statusColor),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    orders.length.toString(),
                    style: AppStyles.bold12(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          if (orders.isEmpty)
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'No ${status.displayName.toLowerCase()} orders',
                  style: AppStyles.medium14(color: AppColors.brown.withValues(alpha: 0.6)),
                ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: orders.length,
              separatorBuilder: (context, index) => const Gap(12),
              itemBuilder: (context, index) {
                final order = orders[index];
                return OrderItemTile(
                  order: order,
                  statusColor: statusColor,
                  onTap: () => onOrderTap(order),
                  onStatusChange: (newStatus) => onStatusChange(order, newStatus),
                );
              },
            ),
        ],
      ),
    );
  }
}

class OrderItemTile extends StatelessWidget {
  final Order order;
  final Color statusColor;
  final VoidCallback onTap;
  final Function(OrderStatus) onStatusChange;

  const OrderItemTile({
    super.key,
    required this.order,
    required this.statusColor,
    required this.onTap,
    required this.onStatusChange,
  });

  List<OrderStatus> getAvailableStatusChanges() {
    switch (order.status) {
      case OrderStatus.pending:
        return [OrderStatus.inProgress, OrderStatus.cancelled];
      case OrderStatus.inProgress:
        return [OrderStatus.completed, OrderStatus.cancelled];
      case OrderStatus.completed:
        return [];
      case OrderStatus.cancelled:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.lightWhite,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: statusColor.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.customer.name,
                        style: AppStyles.semiBold14(color: AppColors.brown),
                      ),
                      const Gap(2),
                      Text(
                        'Table ${order.tableNumber == 0 ? 'Takeaway' : order.tableNumber}',
                        style: AppStyles.regular12(color: AppColors.brown.withValues(alpha: 0.7)),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${order.totalAmount.toStringAsFixed(2)}',
                      style: AppStyles.bold14(color: AppColors.brown),
                    ),
                    const Gap(2),
                    Text(
                      '${order.totalItems} items',
                      style: AppStyles.regular12(color: AppColors.brown.withValues(alpha: 0.7)),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(8),
            Row(
              children: [
                Text(
                  order.timeSinceCreated.inMinutes < 60
                      ? '${order.timeSinceCreated.inMinutes}m ago'
                      : '${order.timeSinceCreated.inHours}h ago',
                  style: AppStyles.regular10(color: AppColors.brown.withValues(alpha: 0.5)),
                ),
                const Spacer(),
                ...getAvailableStatusChanges().map(
                  (newStatus) => Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: GestureDetector(
                      onTap: () => onStatusChange(newStatus),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: _getStatusColor(newStatus).withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: _getStatusColor(newStatus).withValues(alpha: 0.3),
                          ),
                        ),
                        child: Text(
                          _getStatusActionText(newStatus),
                          style: AppStyles.medium12(color: _getStatusColor(newStatus)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(OrderStatus status) {
    switch (status) {
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

  String _getStatusActionText(OrderStatus status) {
    switch (status) {
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.inProgress:
        return 'Start';
      case OrderStatus.completed:
        return 'Complete';
      case OrderStatus.cancelled:
        return 'Cancel';
    }
  }
}
