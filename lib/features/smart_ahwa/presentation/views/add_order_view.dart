import 'package:smart_ahwa/core/enums/snack_bar_type.dart';
import 'package:smart_ahwa/core/extensions/show_snack_bar_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/service_locator.dart';
import '../../domain/entities/customer.dart';
import '../../domain/entities/order.dart';
import '../cubit/orders_cubit.dart';
import '../widgets/add_order_header.dart';
import '../widgets/customer_information_section.dart';
import '../widgets/order_items_section.dart';
import '../widgets/order_summary_card.dart';
import '../widgets/submit_order_button.dart';
import '../widgets/table_information_section.dart';

class AddOrderView extends StatelessWidget {
  const AddOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrdersCubit(getIt()),
      child: const AddOrderViewContent(),
    );
  }
}

class AddOrderViewContent extends StatefulWidget {
  const AddOrderViewContent({super.key});

  @override
  State<AddOrderViewContent> createState() => _AddOrderViewContentState();
}

class _AddOrderViewContentState extends State<AddOrderViewContent> {
  final _formKey = GlobalKey<FormState>();
  final _customerNameController = TextEditingController();
  final _tableNumberController = TextEditingController();

  List<OrderItem> _orderItems = [];
  bool _isSubmitting = false;

  @override
  void dispose() {
    _customerNameController.dispose();
    _tableNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      body: SafeArea(
        child: BlocListener<OrdersCubit, OrdersState>(
          listener: (context, state) {
            state.whenOrNull(
              creating: () => setState(() => _isSubmitting = true),
              orderCreated: (order) {
                setState(() => _isSubmitting = false);
                showSuccessMessage('Order created successfully!');
                resetForm();
              },
              error: (message) {
                setState(() => _isSubmitting = false);
                showErrorMessage(message);
              },
            );
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AddOrderHeader(),
                    const Gap(32),
                    CustomerInformationSection(
                      controller: _customerNameController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Customer name is required';
                        }
                        return null;
                      },
                    ),
                    const Gap(24),
                    OrderItemsSection(
                      onItemsChanged: (items) {
                        setState(() => _orderItems = items);
                      },
                    ),
                    const Gap(24),
                    TableInformationSection(controller: _tableNumberController),
                    const Gap(32),
                    OrderSummaryCard(orderItems: _orderItems),
                    const Gap(32),
                    SubmitOrderButton(
                      isSubmitting: _isSubmitting,
                      isEnabled: _orderItems.isNotEmpty,
                      onPressed: submitOrder,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void submitOrder() {
    if (!_formKey.currentState!.validate()) return;
    if (_orderItems.isEmpty) {
      showErrorMessage('Please add at least one item to the order');
      return;
    }
    final Uuid uuid = Uuid();

    final customer = Customer(
      id: uuid.v4(),
      name: _customerNameController.text.trim(),

      createdAt: DateTime.now(),
    );

    final tableNumber = int.tryParse(_tableNumberController.text.trim()) ?? 0;

    context.read<OrdersCubit>().createOrder(
      customer: customer,
      items: _orderItems,
      tableNumber: tableNumber,
    );
  }

  void resetForm() {
    _customerNameController.clear();
    _tableNumberController.clear();
    setState(() => _orderItems = []);
    _formKey.currentState?.reset();
  }

  void showSuccessMessage(String message) {
    context.showCustomSnackBar(message, type: SnackBarType.success);
  }

  void showErrorMessage(String message) {
    context.showCustomSnackBar(message, type: SnackBarType.error);
  }
}
