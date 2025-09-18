import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../domain/entities/order.dart';
import '../cubit/reports_cubit.dart';
import 'order_status_card.dart';

class OrdersByStatusDisplay extends StatelessWidget {
  final Map<OrderStatus, List<Order>> ordersByStatus;

  const OrdersByStatusDisplay({
    super.key,
    required this.ordersByStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: OrderStatus.values.map((status) {
        final orders = ordersByStatus[status] ?? [];
        return OrderStatusCard(
          status: status,
          orders: orders,
          onOrderTap: (order) => _showOrderDetails(context, order),
          onStatusChange: (order, newStatus) => _updateOrderStatus(context, order, newStatus),
        );
      }).toList(),
    );
  }

  void _showOrderDetails(BuildContext context, Order order) {
    showDialog(
      context: context,
      builder: (context) => OrderDetailsDialog(order: order),
    );
  }

  void _updateOrderStatus(BuildContext context, Order order, OrderStatus newStatus) {
    context.read<ReportsCubit>().updateOrderStatus(order, newStatus);
  }
}

class OrderDetailsDialog extends StatelessWidget {
  final Order order;

  const OrderDetailsDialog({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Order Details'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Customer: ${order.customer.name}'),
            const Gap(8),
            Text('Table: ${order.tableNumber == 0 ? 'Takeaway' : order.tableNumber}'),
            const Gap(8),
            Text('Status: ${order.status.displayName}'),
            const Gap(8),
            Text('Total: \$${order.totalAmount.toStringAsFixed(2)}'),
            const Gap(8),
            Text('Created: ${order.createdAt.toString().substring(0, 16)}'),
            const Gap(16),
            Text('Items:', style: Theme.of(context).textTheme.titleSmall),
            const Gap(8),
            ...order.items.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text('• ${item.quantity}x ${item.drinkType.nameArabic} - \$${item.totalPrice.toStringAsFixed(2)}'),
            )),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Close'),
        ),
      ],
    );
  }
}
