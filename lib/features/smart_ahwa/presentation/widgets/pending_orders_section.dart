import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../cubit/orders_cubit.dart';
import 'dashboard_empty_state.dart';
import 'dashboard_error_state.dart';
import 'dashboard_loading_state.dart';
import 'dashboard_success_message.dart';
import 'pending_orders_list.dart';

class PendingOrdersSection extends StatefulWidget {
  const PendingOrdersSection({super.key});

  @override
  State<PendingOrdersSection> createState() => _PendingOrdersSectionState();
}

class _PendingOrdersSectionState extends State<PendingOrdersSection> {
  @override
  void initState() {
    super.initState();
    loadPendingOrders();
  }

  void loadPendingOrders() {
    context.read<OrdersCubit>().loadPendingOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pending Orders',
              style: AppStyles.bold22(color: AppColors.brown),
            ),
            IconButton(
              onPressed: loadPendingOrders,
              icon: Icon(
                Icons.refresh_rounded,
                color: AppColors.brown,
                size: 24,
              ),
            ),
          ],
        ),
        const Gap(16),
        BlocBuilder<OrdersCubit, OrdersState>(
          builder: (context, state) {
            return state.when(
              initial: () => const DashboardEmptyState(),
              loading: () => const DashboardLoadingState(),
              creating: () => const DashboardLoadingState(),
              loaded: (orders) {
                if (orders.isEmpty) {
                  return const DashboardEmptyState();
                }
                return PendingOrdersList(orders: orders);
              },
              orderCreated:
                  (order) => const DashboardSuccessMessage(
                    message: 'Order created successfully!',
                  ),
              orderCompleted:
                  (order) => const DashboardSuccessMessage(
                    message: 'Order completed successfully!',
                  ),
              orderUpdated:
                  (order) => const DashboardSuccessMessage(
                    message: 'Order updated successfully!',
                  ),
              orderCancelled:
                  (order) => const DashboardSuccessMessage(
                    message: 'Order cancelled successfully!',
                  ),
              orderDetails: (order) => const SizedBox.shrink(),
              error:
                  (message) => DashboardErrorState(
                    message: message,
                    onRetry: loadPendingOrders,
                  ),
            );
          },
        ),
      ],
    );
  }
}
