import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/entities/drink_type.dart';
import '../../domain/entities/order.dart';

/// Drink Selection Widget
/// Allows users to select drinks and quantities for orders
/// Reuses existing styling patterns from the original app
class DrinkSelectionWidget extends StatefulWidget {
  final Function(List<OrderItem>) onItemsChanged;

  const DrinkSelectionWidget({super.key, required this.onItemsChanged});

  @override
  State<DrinkSelectionWidget> createState() => _DrinkSelectionWidgetState();
}

class _DrinkSelectionWidgetState extends State<DrinkSelectionWidget> {
  final List<DrinkType> _availableDrinks = DrinkType.getDefaultDrinkTypes();
  final List<OrderItem> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildSelectedItems(), const Gap(16), _buildDrinkSelection()],
    );
  }

  Widget _buildSelectedItems() {
    if (_selectedItems.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.brown.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.brown.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.local_cafe_outlined,
              color: AppColors.brown.withValues(alpha: 0.5),
              size: 24,
            ),
            const Gap(12),
            Text(
              'No items selected. Choose drinks below.',
              style: AppStyles.regular14(
                color: AppColors.brown.withValues(alpha: 0.7),
              ).copyWith(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selected Items:',
          style: AppStyles.semiBold16(color: AppColors.brown),
        ),
        const Gap(8),
        ..._selectedItems.map((item) => _buildSelectedItem(item)),
      ],
    );
  }

  Widget _buildSelectedItem(OrderItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.brown.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.drinkType.nameArabic,
                  style: AppStyles.semiBold16(color: AppColors.brown),
                ),
                Text(
                  item.drinkType.name,
                  style: AppStyles.regular12(
                    color: AppColors.brown.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => _decrementQuantity(item),
                icon: Icon(Icons.remove_circle_outline, color: Colors.red[600]),
                constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                padding: EdgeInsets.zero,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.brown.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  item.quantity.toString(),
                  style: AppStyles.semiBold16(color: AppColors.brown),
                ),
              ),
              IconButton(
                onPressed: () => _incrementQuantity(item),
                icon: Icon(Icons.add_circle_outline, color: Colors.green[600]),
                constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
          const Gap(8),
          Text(
            '\$${item.totalPrice.toStringAsFixed(2)}',
            style: AppStyles.bold16(color: AppColors.brown),
          ),
        ],
      ),
    );
  }

  Widget _buildDrinkSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Available Drinks:',
          style: AppStyles.semiBold16(color: AppColors.brown),
        ),
        const Gap(12),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.2,
          ),
          itemCount: _availableDrinks.length,
          itemBuilder: (context, index) {
            final drink = _availableDrinks[index];
            return _buildDrinkCard(drink);
          },
        ),
      ],
    );
  }

  Widget _buildDrinkCard(DrinkType drink) {
    final isSelected = _selectedItems.any(
      (item) => item.drinkType.id == drink.id,
    );

    return GestureDetector(
      onTap: () => _toggleDrinkSelection(drink),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? AppColors.brown.withValues(alpha: 0.1)
                  : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color:
                isSelected
                    ? AppColors.brown.withValues(alpha: 0.3)
                    : AppColors.brown.withValues(alpha: 0.1),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _getCategoryColor(
                      drink.category,
                    ).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getCategoryIcon(drink.category),
                    color: _getCategoryColor(drink.category),
                    size: 20,
                  ),
                ),
                if (isSelected)
                  Icon(Icons.check_circle, color: AppColors.brown, size: 24),
              ],
            ),
            const Gap(8),
            Text(
              drink.nameArabic,
              style: AppStyles.semiBold14(color: AppColors.brown),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              drink.name,
              style: AppStyles.regular12(
                color: AppColors.brown.withValues(alpha: 0.6),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Text(
              '\$${drink.price.toStringAsFixed(2)}',
              style: AppStyles.bold16(color: AppColors.brown),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleDrinkSelection(DrinkType drink) {
    final existingIndex = _selectedItems.indexWhere(
      (item) => item.drinkType.id == drink.id,
    );

    if (existingIndex >= 0) {
      setState(() => _selectedItems.removeAt(existingIndex));
    } else {
      final orderItem = OrderItem(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        drinkType: drink,
        quantity: 1,
        itemPrice: drink.price,
      );
      setState(() => _selectedItems.add(orderItem));
    }

    widget.onItemsChanged(_selectedItems);
  }

  void _incrementQuantity(OrderItem item) {
    final index = _selectedItems.indexWhere((i) => i.id == item.id);
    if (index >= 0) {
      setState(() {
        _selectedItems[index] = item.copyWith(quantity: item.quantity + 1);
      });
      widget.onItemsChanged(_selectedItems);
    }
  }

  void _decrementQuantity(OrderItem item) {
    final index = _selectedItems.indexWhere((i) => i.id == item.id);
    if (index >= 0) {
      if (item.quantity > 1) {
        setState(() {
          _selectedItems[index] = item.copyWith(quantity: item.quantity - 1);
        });
      } else {
        setState(() => _selectedItems.removeAt(index));
      }
      widget.onItemsChanged(_selectedItems);
    }
  }

  Color _getCategoryColor(DrinkCategory category) {
    switch (category) {
      case DrinkCategory.hot:
        return Colors.orange;
      case DrinkCategory.cold:
        return Colors.blue;
      case DrinkCategory.dessert:
        return Colors.pink;
      case DrinkCategory.snack:
        return Colors.green;
    }
  }

  IconData _getCategoryIcon(DrinkCategory category) {
    switch (category) {
      case DrinkCategory.hot:
        return Icons.local_fire_department;
      case DrinkCategory.cold:
        return Icons.ac_unit;
      case DrinkCategory.dessert:
        return Icons.cake;
      case DrinkCategory.snack:
        return Icons.fastfood;
    }
  }
}
