import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final String id;
  final String name;
  final DateTime createdAt;

  const Customer({
    required this.id,
    required this.name,
    required this.createdAt,
  });

  Customer copyWith({String? id, String? name, DateTime? createdAt}) {
    return Customer(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'createdAt': createdAt.toIso8601String()};
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  List<Object?> get props => [id, name, createdAt];
}
