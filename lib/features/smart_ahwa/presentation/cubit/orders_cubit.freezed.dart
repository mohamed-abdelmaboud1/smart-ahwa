// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState()';
}


}

/// @nodoc
class $OrdersStateCopyWith<$Res>  {
$OrdersStateCopyWith(OrdersState _, $Res Function(OrdersState) __);
}


/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OrdersInitial value)?  initial,TResult Function( OrdersLoading value)?  loading,TResult Function( OrdersCreating value)?  creating,TResult Function( OrdersLoaded value)?  loaded,TResult Function( OrderCreated value)?  orderCreated,TResult Function( OrderCompleted value)?  orderCompleted,TResult Function( OrderUpdated value)?  orderUpdated,TResult Function( OrderCancelled value)?  orderCancelled,TResult Function( OrderDetails value)?  orderDetails,TResult Function( OrdersError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OrdersInitial() when initial != null:
return initial(_that);case OrdersLoading() when loading != null:
return loading(_that);case OrdersCreating() when creating != null:
return creating(_that);case OrdersLoaded() when loaded != null:
return loaded(_that);case OrderCreated() when orderCreated != null:
return orderCreated(_that);case OrderCompleted() when orderCompleted != null:
return orderCompleted(_that);case OrderUpdated() when orderUpdated != null:
return orderUpdated(_that);case OrderCancelled() when orderCancelled != null:
return orderCancelled(_that);case OrderDetails() when orderDetails != null:
return orderDetails(_that);case OrdersError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OrdersInitial value)  initial,required TResult Function( OrdersLoading value)  loading,required TResult Function( OrdersCreating value)  creating,required TResult Function( OrdersLoaded value)  loaded,required TResult Function( OrderCreated value)  orderCreated,required TResult Function( OrderCompleted value)  orderCompleted,required TResult Function( OrderUpdated value)  orderUpdated,required TResult Function( OrderCancelled value)  orderCancelled,required TResult Function( OrderDetails value)  orderDetails,required TResult Function( OrdersError value)  error,}){
final _that = this;
switch (_that) {
case OrdersInitial():
return initial(_that);case OrdersLoading():
return loading(_that);case OrdersCreating():
return creating(_that);case OrdersLoaded():
return loaded(_that);case OrderCreated():
return orderCreated(_that);case OrderCompleted():
return orderCompleted(_that);case OrderUpdated():
return orderUpdated(_that);case OrderCancelled():
return orderCancelled(_that);case OrderDetails():
return orderDetails(_that);case OrdersError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OrdersInitial value)?  initial,TResult? Function( OrdersLoading value)?  loading,TResult? Function( OrdersCreating value)?  creating,TResult? Function( OrdersLoaded value)?  loaded,TResult? Function( OrderCreated value)?  orderCreated,TResult? Function( OrderCompleted value)?  orderCompleted,TResult? Function( OrderUpdated value)?  orderUpdated,TResult? Function( OrderCancelled value)?  orderCancelled,TResult? Function( OrderDetails value)?  orderDetails,TResult? Function( OrdersError value)?  error,}){
final _that = this;
switch (_that) {
case OrdersInitial() when initial != null:
return initial(_that);case OrdersLoading() when loading != null:
return loading(_that);case OrdersCreating() when creating != null:
return creating(_that);case OrdersLoaded() when loaded != null:
return loaded(_that);case OrderCreated() when orderCreated != null:
return orderCreated(_that);case OrderCompleted() when orderCompleted != null:
return orderCompleted(_that);case OrderUpdated() when orderUpdated != null:
return orderUpdated(_that);case OrderCancelled() when orderCancelled != null:
return orderCancelled(_that);case OrderDetails() when orderDetails != null:
return orderDetails(_that);case OrdersError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  creating,TResult Function( List<Order> orders)?  loaded,TResult Function( Order order)?  orderCreated,TResult Function( Order order)?  orderCompleted,TResult Function( Order order)?  orderUpdated,TResult Function( Order order)?  orderCancelled,TResult Function( Order order)?  orderDetails,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OrdersInitial() when initial != null:
return initial();case OrdersLoading() when loading != null:
return loading();case OrdersCreating() when creating != null:
return creating();case OrdersLoaded() when loaded != null:
return loaded(_that.orders);case OrderCreated() when orderCreated != null:
return orderCreated(_that.order);case OrderCompleted() when orderCompleted != null:
return orderCompleted(_that.order);case OrderUpdated() when orderUpdated != null:
return orderUpdated(_that.order);case OrderCancelled() when orderCancelled != null:
return orderCancelled(_that.order);case OrderDetails() when orderDetails != null:
return orderDetails(_that.order);case OrdersError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  creating,required TResult Function( List<Order> orders)  loaded,required TResult Function( Order order)  orderCreated,required TResult Function( Order order)  orderCompleted,required TResult Function( Order order)  orderUpdated,required TResult Function( Order order)  orderCancelled,required TResult Function( Order order)  orderDetails,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case OrdersInitial():
return initial();case OrdersLoading():
return loading();case OrdersCreating():
return creating();case OrdersLoaded():
return loaded(_that.orders);case OrderCreated():
return orderCreated(_that.order);case OrderCompleted():
return orderCompleted(_that.order);case OrderUpdated():
return orderUpdated(_that.order);case OrderCancelled():
return orderCancelled(_that.order);case OrderDetails():
return orderDetails(_that.order);case OrdersError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  creating,TResult? Function( List<Order> orders)?  loaded,TResult? Function( Order order)?  orderCreated,TResult? Function( Order order)?  orderCompleted,TResult? Function( Order order)?  orderUpdated,TResult? Function( Order order)?  orderCancelled,TResult? Function( Order order)?  orderDetails,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case OrdersInitial() when initial != null:
return initial();case OrdersLoading() when loading != null:
return loading();case OrdersCreating() when creating != null:
return creating();case OrdersLoaded() when loaded != null:
return loaded(_that.orders);case OrderCreated() when orderCreated != null:
return orderCreated(_that.order);case OrderCompleted() when orderCompleted != null:
return orderCompleted(_that.order);case OrderUpdated() when orderUpdated != null:
return orderUpdated(_that.order);case OrderCancelled() when orderCancelled != null:
return orderCancelled(_that.order);case OrderDetails() when orderDetails != null:
return orderDetails(_that.order);case OrdersError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class OrdersInitial implements OrdersState {
  const OrdersInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.initial()';
}


}




/// @nodoc


class OrdersLoading implements OrdersState {
  const OrdersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.loading()';
}


}




/// @nodoc


class OrdersCreating implements OrdersState {
  const OrdersCreating();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersCreating);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.creating()';
}


}




/// @nodoc


class OrdersLoaded implements OrdersState {
  const OrdersLoaded({required final  List<Order> orders}): _orders = orders;
  

 final  List<Order> _orders;
 List<Order> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}


/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersLoadedCopyWith<OrdersLoaded> get copyWith => _$OrdersLoadedCopyWithImpl<OrdersLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersLoaded&&const DeepCollectionEquality().equals(other._orders, _orders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders));

@override
String toString() {
  return 'OrdersState.loaded(orders: $orders)';
}


}

/// @nodoc
abstract mixin class $OrdersLoadedCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory $OrdersLoadedCopyWith(OrdersLoaded value, $Res Function(OrdersLoaded) _then) = _$OrdersLoadedCopyWithImpl;
@useResult
$Res call({
 List<Order> orders
});




}
/// @nodoc
class _$OrdersLoadedCopyWithImpl<$Res>
    implements $OrdersLoadedCopyWith<$Res> {
  _$OrdersLoadedCopyWithImpl(this._self, this._then);

  final OrdersLoaded _self;
  final $Res Function(OrdersLoaded) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orders = null,}) {
  return _then(OrdersLoaded(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>,
  ));
}


}

/// @nodoc


class OrderCreated implements OrdersState {
  const OrderCreated({required this.order});
  

 final  Order order;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCreatedCopyWith<OrderCreated> get copyWith => _$OrderCreatedCopyWithImpl<OrderCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCreated&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrdersState.orderCreated(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderCreatedCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory $OrderCreatedCopyWith(OrderCreated value, $Res Function(OrderCreated) _then) = _$OrderCreatedCopyWithImpl;
@useResult
$Res call({
 Order order
});




}
/// @nodoc
class _$OrderCreatedCopyWithImpl<$Res>
    implements $OrderCreatedCopyWith<$Res> {
  _$OrderCreatedCopyWithImpl(this._self, this._then);

  final OrderCreated _self;
  final $Res Function(OrderCreated) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderCreated(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,
  ));
}


}

/// @nodoc


class OrderCompleted implements OrdersState {
  const OrderCompleted({required this.order});
  

 final  Order order;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCompletedCopyWith<OrderCompleted> get copyWith => _$OrderCompletedCopyWithImpl<OrderCompleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCompleted&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrdersState.orderCompleted(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderCompletedCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory $OrderCompletedCopyWith(OrderCompleted value, $Res Function(OrderCompleted) _then) = _$OrderCompletedCopyWithImpl;
@useResult
$Res call({
 Order order
});




}
/// @nodoc
class _$OrderCompletedCopyWithImpl<$Res>
    implements $OrderCompletedCopyWith<$Res> {
  _$OrderCompletedCopyWithImpl(this._self, this._then);

  final OrderCompleted _self;
  final $Res Function(OrderCompleted) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderCompleted(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,
  ));
}


}

/// @nodoc


class OrderUpdated implements OrdersState {
  const OrderUpdated({required this.order});
  

 final  Order order;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderUpdatedCopyWith<OrderUpdated> get copyWith => _$OrderUpdatedCopyWithImpl<OrderUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderUpdated&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrdersState.orderUpdated(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderUpdatedCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory $OrderUpdatedCopyWith(OrderUpdated value, $Res Function(OrderUpdated) _then) = _$OrderUpdatedCopyWithImpl;
@useResult
$Res call({
 Order order
});




}
/// @nodoc
class _$OrderUpdatedCopyWithImpl<$Res>
    implements $OrderUpdatedCopyWith<$Res> {
  _$OrderUpdatedCopyWithImpl(this._self, this._then);

  final OrderUpdated _self;
  final $Res Function(OrderUpdated) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderUpdated(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,
  ));
}


}

/// @nodoc


class OrderCancelled implements OrdersState {
  const OrderCancelled({required this.order});
  

 final  Order order;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCancelledCopyWith<OrderCancelled> get copyWith => _$OrderCancelledCopyWithImpl<OrderCancelled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCancelled&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrdersState.orderCancelled(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderCancelledCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory $OrderCancelledCopyWith(OrderCancelled value, $Res Function(OrderCancelled) _then) = _$OrderCancelledCopyWithImpl;
@useResult
$Res call({
 Order order
});




}
/// @nodoc
class _$OrderCancelledCopyWithImpl<$Res>
    implements $OrderCancelledCopyWith<$Res> {
  _$OrderCancelledCopyWithImpl(this._self, this._then);

  final OrderCancelled _self;
  final $Res Function(OrderCancelled) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderCancelled(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,
  ));
}


}

/// @nodoc


class OrderDetails implements OrdersState {
  const OrderDetails({required this.order});
  

 final  Order order;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsCopyWith<OrderDetails> get copyWith => _$OrderDetailsCopyWithImpl<OrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetails&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrdersState.orderDetails(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory $OrderDetailsCopyWith(OrderDetails value, $Res Function(OrderDetails) _then) = _$OrderDetailsCopyWithImpl;
@useResult
$Res call({
 Order order
});




}
/// @nodoc
class _$OrderDetailsCopyWithImpl<$Res>
    implements $OrderDetailsCopyWith<$Res> {
  _$OrderDetailsCopyWithImpl(this._self, this._then);

  final OrderDetails _self;
  final $Res Function(OrderDetails) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderDetails(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,
  ));
}


}

/// @nodoc


class OrdersError implements OrdersState {
  const OrdersError({required this.message});
  

 final  String message;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersErrorCopyWith<OrdersError> get copyWith => _$OrdersErrorCopyWithImpl<OrdersError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OrdersState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $OrdersErrorCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory $OrdersErrorCopyWith(OrdersError value, $Res Function(OrdersError) _then) = _$OrdersErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OrdersErrorCopyWithImpl<$Res>
    implements $OrdersErrorCopyWith<$Res> {
  _$OrdersErrorCopyWithImpl(this._self, this._then);

  final OrdersError _self;
  final $Res Function(OrdersError) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OrdersError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
