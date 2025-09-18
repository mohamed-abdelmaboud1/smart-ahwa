import 'customer.dart';
import 'drink_type.dart';

enum OrderStatus {
  pending,
  inProgress,
  completed,
  cancelled;

  String get displayName {
    switch (this) {
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.inProgress:
        return 'In Progress';
      case OrderStatus.completed:
        return 'Completed';
      case OrderStatus.cancelled:
        return 'Cancelled';
    }
  }

  String get displayNameArabic {
    switch (this) {
      case OrderStatus.pending:
        return 'في الانتظار';
      case OrderStatus.inProgress:
        return 'قيد التحضير';
      case OrderStatus.completed:
        return 'مكتمل';
      case OrderStatus.cancelled:
        return 'ملغي';
    }
  }
}

class OrderItem {
  final String id;
  final DrinkType drinkType;
  final int quantity;
  final String? specialInstructions;
  final double itemPrice;

  const OrderItem({
    required this.id,
    required this.drinkType,
    required this.quantity,
    this.specialInstructions,
    required this.itemPrice,
  });

  double get totalPrice => itemPrice * quantity;

  OrderItem copyWith({
    String? id,
    DrinkType? drinkType,
    int? quantity,
    String? specialInstructions,
    double? itemPrice,
  }) {
    return OrderItem(
      id: id ?? this.id,
      drinkType: drinkType ?? this.drinkType,
      quantity: quantity ?? this.quantity,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      itemPrice: itemPrice ?? this.itemPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'drinkType': drinkType.toMap(),
      'quantity': quantity,
      'specialInstructions': specialInstructions,
      'itemPrice': itemPrice,
    };
  }

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      id: map['id'] ?? '',
      drinkType: DrinkType.fromMap(map['drinkType']),
      quantity: map['quantity'] ?? 1,
      specialInstructions: map['specialInstructions'],
      itemPrice: (map['itemPrice'] ?? 0.0).toDouble(),
    );
  }
}

class Order {
  final String id;
  final Customer customer;
  final List<OrderItem> items;
  final OrderStatus status;
  final DateTime createdAt;
  final DateTime? completedAt;
  final String? notes;
  final int tableNumber;

  const Order({
    required this.id,
    required this.customer,
    required this.items,
    this.status = OrderStatus.pending,
    required this.createdAt,
    this.completedAt,
    this.notes,
    this.tableNumber = 0,
  });

  double get totalAmount => items.fold(0.0, (sum, item) => sum + item.totalPrice);
  
  int get totalItems => items.fold(0, (sum, item) => sum + item.quantity);
  
  Duration get timeSinceCreated => DateTime.now().difference(createdAt);
  
  bool get isPending => status == OrderStatus.pending;
  bool get isInProgress => status == OrderStatus.inProgress;
  bool get isCompleted => status == OrderStatus.completed;
  bool get isCancelled => status == OrderStatus.cancelled;

  // Estimated preparation time based on items
  int get estimatedPreparationMinutes {
    return items.fold(0, (max, item) {
      final itemTime = item.drinkType.preparationTimeMinutes * item.quantity;
      return itemTime > max ? itemTime : max;
    });
  }

  Order copyWith({
    String? id,
    Customer? customer,
    List<OrderItem>? items,
    OrderStatus? status,
    DateTime? createdAt,
    DateTime? completedAt,
    String? notes,
    int? tableNumber,
  }) {
    return Order(
      id: id ?? this.id,
      customer: customer ?? this.customer,
      items: items ?? this.items,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      completedAt: completedAt ?? this.completedAt,
      notes: notes ?? this.notes,
      tableNumber: tableNumber ?? this.tableNumber,
    );
  }

  Order markAsCompleted() {
    return copyWith(
      status: OrderStatus.completed,
      completedAt: DateTime.now(),
    );
  }

  Order markAsInProgress() {
    return copyWith(status: OrderStatus.inProgress);
  }

  Order markAsCancelled() {
    return copyWith(status: OrderStatus.cancelled);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customer': customer.toMap(),
      'items': items.map((item) => item.toMap()).toList(),
      'status': status.name,
      'createdAt': createdAt.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(),
      'notes': notes,
      'tableNumber': tableNumber,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'] ?? '',
      customer: Customer.fromMap(map['customer']),
      items: (map['items'] as List<dynamic>)
          .map((item) => OrderItem.fromMap(item))
          .toList(),
      status: OrderStatus.values.firstWhere(
        (e) => e.name == map['status'],
        orElse: () => OrderStatus.pending,
      ),
      createdAt: DateTime.parse(map['createdAt']),
      completedAt: map['completedAt'] != null 
          ? DateTime.parse(map['completedAt']) 
          : null,
      notes: map['notes'],
      tableNumber: map['tableNumber'] ?? 0,
    );
  }

  @override
  String toString() {
    return 'Order(id: $id, customer: ${customer.name}, items: ${items.length}, status: $status, total: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Order && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
