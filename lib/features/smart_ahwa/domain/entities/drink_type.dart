import 'package:equatable/equatable.dart';

enum DrinkCategory {
  hot,
  cold,
  dessert,
  snack;

  String get displayName {
    switch (this) {
      case DrinkCategory.hot:
        return 'Hot Drinks';
      case DrinkCategory.cold:
        return 'Cold Drinks';
      case DrinkCategory.dessert:
        return 'Desserts';
      case DrinkCategory.snack:
        return 'Snacks';
    }
  }
}

class DrinkType extends Equatable {
  final String id;
  final String name;
  final String nameArabic;
  final DrinkCategory category;
  final double price;
  final bool isAvailable;
  final String? description;
  final int preparationTimeMinutes;

  const DrinkType({
    required this.id,
    required this.name,
    required this.nameArabic,
    required this.category,
    required this.price,
    this.isAvailable = true,
    this.description,
    this.preparationTimeMinutes = 5,
  });

  DrinkType copyWith({
    String? id,
    String? name,
    String? nameArabic,
    DrinkCategory? category,
    double? price,
    bool? isAvailable,
    String? description,
    int? preparationTimeMinutes,
  }) {
    return DrinkType(
      id: id ?? this.id,
      name: name ?? this.name,
      nameArabic: nameArabic ?? this.nameArabic,
      category: category ?? this.category,
      price: price ?? this.price,
      isAvailable: isAvailable ?? this.isAvailable,
      description: description ?? this.description,
      preparationTimeMinutes:
          preparationTimeMinutes ?? this.preparationTimeMinutes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nameArabic': nameArabic,
      'category': category.name,
      'price': price,
      'isAvailable': isAvailable,
      'description': description,
      'preparationTimeMinutes': preparationTimeMinutes,
    };
  }

  factory DrinkType.fromMap(Map<String, dynamic> map) {
    return DrinkType(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      nameArabic: map['nameArabic'] ?? '',
      category: DrinkCategory.values.firstWhere(
        (e) => e.name == map['category'],
        orElse: () => DrinkCategory.hot,
      ),
      price: (map['price'] ?? 0.0).toDouble(),
      isAvailable: map['isAvailable'] ?? true,
      description: map['description'],
      preparationTimeMinutes: map['preparationTimeMinutes'] ?? 5,
    );
  }
  @override
  String toString() {
    return 'DrinkType(id: $id, name: $name, nameArabic: $nameArabic, category: $category, price: $price)';
  }

  @override
  List<Object?> get props => [id, name, nameArabic, category, price];

  // Static method to get default drink types for Ahwa/Cafe
  static List<DrinkType> getDefaultDrinkTypes() {
    return [
      // Hot drinks
      const DrinkType(
        id: '1',
        name: 'Turkish Coffee',
        nameArabic: 'قهوة تركي',
        category: DrinkCategory.hot,
        price: 15.0,
        preparationTimeMinutes: 5,
      ),
      const DrinkType(
        id: '2',
        name: 'Tea',
        nameArabic: 'شاي',
        category: DrinkCategory.hot,
        price: 8.0,
        preparationTimeMinutes: 3,
      ),
      const DrinkType(
        id: '3',
        name: 'Cappuccino',
        nameArabic: 'كابتشينو',
        category: DrinkCategory.hot,
        price: 25.0,
        preparationTimeMinutes: 7,
      ),

      const DrinkType(
        id: '4',
        name: 'Fresh Juice',
        nameArabic: 'عصير طبيعي',
        category: DrinkCategory.cold,
        price: 18.0,
        preparationTimeMinutes: 4,
      ),
      const DrinkType(
        id: '5',
        name: 'Hibiscus Tea',
        nameArabic: 'كركديه',
        category: DrinkCategory.hot,
        price: 12.0,
        preparationTimeMinutes: 6,
      ),
    ];
  }
}
