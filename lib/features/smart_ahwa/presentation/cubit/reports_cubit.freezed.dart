// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState()';
}


}

/// @nodoc
class $ReportsStateCopyWith<$Res>  {
$ReportsStateCopyWith(ReportsState _, $Res Function(ReportsState) __);
}


/// Adds pattern-matching-related methods to [ReportsState].
extension ReportsStatePatterns on ReportsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReportsInitial value)?  initial,TResult Function( ReportsLoading value)?  loading,TResult Function( SummaryLoaded value)?  summaryLoaded,TResult Function( TopSellingDrinksLoaded value)?  topSellingDrinksLoaded,TResult Function( PerformanceMetricsLoaded value)?  performanceMetricsLoaded,TResult Function( DateRangeSummaryLoaded value)?  dateRangeSummaryLoaded,TResult Function( PeakHoursLoaded value)?  peakHoursLoaded,TResult Function( AverageOrderValueLoaded value)?  averageOrderValueLoaded,TResult Function( OrdersByStatusLoaded value)?  ordersByStatusLoaded,TResult Function( ReportsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReportsInitial() when initial != null:
return initial(_that);case ReportsLoading() when loading != null:
return loading(_that);case SummaryLoaded() when summaryLoaded != null:
return summaryLoaded(_that);case TopSellingDrinksLoaded() when topSellingDrinksLoaded != null:
return topSellingDrinksLoaded(_that);case PerformanceMetricsLoaded() when performanceMetricsLoaded != null:
return performanceMetricsLoaded(_that);case DateRangeSummaryLoaded() when dateRangeSummaryLoaded != null:
return dateRangeSummaryLoaded(_that);case PeakHoursLoaded() when peakHoursLoaded != null:
return peakHoursLoaded(_that);case AverageOrderValueLoaded() when averageOrderValueLoaded != null:
return averageOrderValueLoaded(_that);case OrdersByStatusLoaded() when ordersByStatusLoaded != null:
return ordersByStatusLoaded(_that);case ReportsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReportsInitial value)  initial,required TResult Function( ReportsLoading value)  loading,required TResult Function( SummaryLoaded value)  summaryLoaded,required TResult Function( TopSellingDrinksLoaded value)  topSellingDrinksLoaded,required TResult Function( PerformanceMetricsLoaded value)  performanceMetricsLoaded,required TResult Function( DateRangeSummaryLoaded value)  dateRangeSummaryLoaded,required TResult Function( PeakHoursLoaded value)  peakHoursLoaded,required TResult Function( AverageOrderValueLoaded value)  averageOrderValueLoaded,required TResult Function( OrdersByStatusLoaded value)  ordersByStatusLoaded,required TResult Function( ReportsError value)  error,}){
final _that = this;
switch (_that) {
case ReportsInitial():
return initial(_that);case ReportsLoading():
return loading(_that);case SummaryLoaded():
return summaryLoaded(_that);case TopSellingDrinksLoaded():
return topSellingDrinksLoaded(_that);case PerformanceMetricsLoaded():
return performanceMetricsLoaded(_that);case DateRangeSummaryLoaded():
return dateRangeSummaryLoaded(_that);case PeakHoursLoaded():
return peakHoursLoaded(_that);case AverageOrderValueLoaded():
return averageOrderValueLoaded(_that);case OrdersByStatusLoaded():
return ordersByStatusLoaded(_that);case ReportsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReportsInitial value)?  initial,TResult? Function( ReportsLoading value)?  loading,TResult? Function( SummaryLoaded value)?  summaryLoaded,TResult? Function( TopSellingDrinksLoaded value)?  topSellingDrinksLoaded,TResult? Function( PerformanceMetricsLoaded value)?  performanceMetricsLoaded,TResult? Function( DateRangeSummaryLoaded value)?  dateRangeSummaryLoaded,TResult? Function( PeakHoursLoaded value)?  peakHoursLoaded,TResult? Function( AverageOrderValueLoaded value)?  averageOrderValueLoaded,TResult? Function( OrdersByStatusLoaded value)?  ordersByStatusLoaded,TResult? Function( ReportsError value)?  error,}){
final _that = this;
switch (_that) {
case ReportsInitial() when initial != null:
return initial(_that);case ReportsLoading() when loading != null:
return loading(_that);case SummaryLoaded() when summaryLoaded != null:
return summaryLoaded(_that);case TopSellingDrinksLoaded() when topSellingDrinksLoaded != null:
return topSellingDrinksLoaded(_that);case PerformanceMetricsLoaded() when performanceMetricsLoaded != null:
return performanceMetricsLoaded(_that);case DateRangeSummaryLoaded() when dateRangeSummaryLoaded != null:
return dateRangeSummaryLoaded(_that);case PeakHoursLoaded() when peakHoursLoaded != null:
return peakHoursLoaded(_that);case AverageOrderValueLoaded() when averageOrderValueLoaded != null:
return averageOrderValueLoaded(_that);case OrdersByStatusLoaded() when ordersByStatusLoaded != null:
return ordersByStatusLoaded(_that);case ReportsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DailySummary summary)?  summaryLoaded,TResult Function( List<TopSellingDrink> drinks)?  topSellingDrinksLoaded,TResult Function( Map<String, dynamic> metrics)?  performanceMetricsLoaded,TResult Function( List<DailySummary> summaries)?  dateRangeSummaryLoaded,TResult Function( Map<int, int> peakHours)?  peakHoursLoaded,TResult Function( double value)?  averageOrderValueLoaded,TResult Function( Map<OrderStatus, List<Order>> ordersByStatus)?  ordersByStatusLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ReportsInitial() when initial != null:
return initial();case ReportsLoading() when loading != null:
return loading();case SummaryLoaded() when summaryLoaded != null:
return summaryLoaded(_that.summary);case TopSellingDrinksLoaded() when topSellingDrinksLoaded != null:
return topSellingDrinksLoaded(_that.drinks);case PerformanceMetricsLoaded() when performanceMetricsLoaded != null:
return performanceMetricsLoaded(_that.metrics);case DateRangeSummaryLoaded() when dateRangeSummaryLoaded != null:
return dateRangeSummaryLoaded(_that.summaries);case PeakHoursLoaded() when peakHoursLoaded != null:
return peakHoursLoaded(_that.peakHours);case AverageOrderValueLoaded() when averageOrderValueLoaded != null:
return averageOrderValueLoaded(_that.value);case OrdersByStatusLoaded() when ordersByStatusLoaded != null:
return ordersByStatusLoaded(_that.ordersByStatus);case ReportsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DailySummary summary)  summaryLoaded,required TResult Function( List<TopSellingDrink> drinks)  topSellingDrinksLoaded,required TResult Function( Map<String, dynamic> metrics)  performanceMetricsLoaded,required TResult Function( List<DailySummary> summaries)  dateRangeSummaryLoaded,required TResult Function( Map<int, int> peakHours)  peakHoursLoaded,required TResult Function( double value)  averageOrderValueLoaded,required TResult Function( Map<OrderStatus, List<Order>> ordersByStatus)  ordersByStatusLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ReportsInitial():
return initial();case ReportsLoading():
return loading();case SummaryLoaded():
return summaryLoaded(_that.summary);case TopSellingDrinksLoaded():
return topSellingDrinksLoaded(_that.drinks);case PerformanceMetricsLoaded():
return performanceMetricsLoaded(_that.metrics);case DateRangeSummaryLoaded():
return dateRangeSummaryLoaded(_that.summaries);case PeakHoursLoaded():
return peakHoursLoaded(_that.peakHours);case AverageOrderValueLoaded():
return averageOrderValueLoaded(_that.value);case OrdersByStatusLoaded():
return ordersByStatusLoaded(_that.ordersByStatus);case ReportsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DailySummary summary)?  summaryLoaded,TResult? Function( List<TopSellingDrink> drinks)?  topSellingDrinksLoaded,TResult? Function( Map<String, dynamic> metrics)?  performanceMetricsLoaded,TResult? Function( List<DailySummary> summaries)?  dateRangeSummaryLoaded,TResult? Function( Map<int, int> peakHours)?  peakHoursLoaded,TResult? Function( double value)?  averageOrderValueLoaded,TResult? Function( Map<OrderStatus, List<Order>> ordersByStatus)?  ordersByStatusLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ReportsInitial() when initial != null:
return initial();case ReportsLoading() when loading != null:
return loading();case SummaryLoaded() when summaryLoaded != null:
return summaryLoaded(_that.summary);case TopSellingDrinksLoaded() when topSellingDrinksLoaded != null:
return topSellingDrinksLoaded(_that.drinks);case PerformanceMetricsLoaded() when performanceMetricsLoaded != null:
return performanceMetricsLoaded(_that.metrics);case DateRangeSummaryLoaded() when dateRangeSummaryLoaded != null:
return dateRangeSummaryLoaded(_that.summaries);case PeakHoursLoaded() when peakHoursLoaded != null:
return peakHoursLoaded(_that.peakHours);case AverageOrderValueLoaded() when averageOrderValueLoaded != null:
return averageOrderValueLoaded(_that.value);case OrdersByStatusLoaded() when ordersByStatusLoaded != null:
return ordersByStatusLoaded(_that.ordersByStatus);case ReportsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ReportsInitial implements ReportsState {
  const ReportsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState.initial()';
}


}




/// @nodoc


class ReportsLoading implements ReportsState {
  const ReportsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState.loading()';
}


}




/// @nodoc


class SummaryLoaded implements ReportsState {
  const SummaryLoaded({required this.summary});
  

 final  DailySummary summary;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryLoadedCopyWith<SummaryLoaded> get copyWith => _$SummaryLoadedCopyWithImpl<SummaryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryLoaded&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,summary);

@override
String toString() {
  return 'ReportsState.summaryLoaded(summary: $summary)';
}


}

/// @nodoc
abstract mixin class $SummaryLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $SummaryLoadedCopyWith(SummaryLoaded value, $Res Function(SummaryLoaded) _then) = _$SummaryLoadedCopyWithImpl;
@useResult
$Res call({
 DailySummary summary
});




}
/// @nodoc
class _$SummaryLoadedCopyWithImpl<$Res>
    implements $SummaryLoadedCopyWith<$Res> {
  _$SummaryLoadedCopyWithImpl(this._self, this._then);

  final SummaryLoaded _self;
  final $Res Function(SummaryLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(SummaryLoaded(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as DailySummary,
  ));
}


}

/// @nodoc


class TopSellingDrinksLoaded implements ReportsState {
  const TopSellingDrinksLoaded({required final  List<TopSellingDrink> drinks}): _drinks = drinks;
  

 final  List<TopSellingDrink> _drinks;
 List<TopSellingDrink> get drinks {
  if (_drinks is EqualUnmodifiableListView) return _drinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_drinks);
}


/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopSellingDrinksLoadedCopyWith<TopSellingDrinksLoaded> get copyWith => _$TopSellingDrinksLoadedCopyWithImpl<TopSellingDrinksLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopSellingDrinksLoaded&&const DeepCollectionEquality().equals(other._drinks, _drinks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_drinks));

@override
String toString() {
  return 'ReportsState.topSellingDrinksLoaded(drinks: $drinks)';
}


}

/// @nodoc
abstract mixin class $TopSellingDrinksLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $TopSellingDrinksLoadedCopyWith(TopSellingDrinksLoaded value, $Res Function(TopSellingDrinksLoaded) _then) = _$TopSellingDrinksLoadedCopyWithImpl;
@useResult
$Res call({
 List<TopSellingDrink> drinks
});




}
/// @nodoc
class _$TopSellingDrinksLoadedCopyWithImpl<$Res>
    implements $TopSellingDrinksLoadedCopyWith<$Res> {
  _$TopSellingDrinksLoadedCopyWithImpl(this._self, this._then);

  final TopSellingDrinksLoaded _self;
  final $Res Function(TopSellingDrinksLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? drinks = null,}) {
  return _then(TopSellingDrinksLoaded(
drinks: null == drinks ? _self._drinks : drinks // ignore: cast_nullable_to_non_nullable
as List<TopSellingDrink>,
  ));
}


}

/// @nodoc


class PerformanceMetricsLoaded implements ReportsState {
  const PerformanceMetricsLoaded({required final  Map<String, dynamic> metrics}): _metrics = metrics;
  

 final  Map<String, dynamic> _metrics;
 Map<String, dynamic> get metrics {
  if (_metrics is EqualUnmodifiableMapView) return _metrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metrics);
}


/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceMetricsLoadedCopyWith<PerformanceMetricsLoaded> get copyWith => _$PerformanceMetricsLoadedCopyWithImpl<PerformanceMetricsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceMetricsLoaded&&const DeepCollectionEquality().equals(other._metrics, _metrics));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_metrics));

@override
String toString() {
  return 'ReportsState.performanceMetricsLoaded(metrics: $metrics)';
}


}

/// @nodoc
abstract mixin class $PerformanceMetricsLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $PerformanceMetricsLoadedCopyWith(PerformanceMetricsLoaded value, $Res Function(PerformanceMetricsLoaded) _then) = _$PerformanceMetricsLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> metrics
});




}
/// @nodoc
class _$PerformanceMetricsLoadedCopyWithImpl<$Res>
    implements $PerformanceMetricsLoadedCopyWith<$Res> {
  _$PerformanceMetricsLoadedCopyWithImpl(this._self, this._then);

  final PerformanceMetricsLoaded _self;
  final $Res Function(PerformanceMetricsLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? metrics = null,}) {
  return _then(PerformanceMetricsLoaded(
metrics: null == metrics ? _self._metrics : metrics // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class DateRangeSummaryLoaded implements ReportsState {
  const DateRangeSummaryLoaded({required final  List<DailySummary> summaries}): _summaries = summaries;
  

 final  List<DailySummary> _summaries;
 List<DailySummary> get summaries {
  if (_summaries is EqualUnmodifiableListView) return _summaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_summaries);
}


/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateRangeSummaryLoadedCopyWith<DateRangeSummaryLoaded> get copyWith => _$DateRangeSummaryLoadedCopyWithImpl<DateRangeSummaryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateRangeSummaryLoaded&&const DeepCollectionEquality().equals(other._summaries, _summaries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_summaries));

@override
String toString() {
  return 'ReportsState.dateRangeSummaryLoaded(summaries: $summaries)';
}


}

/// @nodoc
abstract mixin class $DateRangeSummaryLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $DateRangeSummaryLoadedCopyWith(DateRangeSummaryLoaded value, $Res Function(DateRangeSummaryLoaded) _then) = _$DateRangeSummaryLoadedCopyWithImpl;
@useResult
$Res call({
 List<DailySummary> summaries
});




}
/// @nodoc
class _$DateRangeSummaryLoadedCopyWithImpl<$Res>
    implements $DateRangeSummaryLoadedCopyWith<$Res> {
  _$DateRangeSummaryLoadedCopyWithImpl(this._self, this._then);

  final DateRangeSummaryLoaded _self;
  final $Res Function(DateRangeSummaryLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? summaries = null,}) {
  return _then(DateRangeSummaryLoaded(
summaries: null == summaries ? _self._summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<DailySummary>,
  ));
}


}

/// @nodoc


class PeakHoursLoaded implements ReportsState {
  const PeakHoursLoaded({required final  Map<int, int> peakHours}): _peakHours = peakHours;
  

 final  Map<int, int> _peakHours;
 Map<int, int> get peakHours {
  if (_peakHours is EqualUnmodifiableMapView) return _peakHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_peakHours);
}


/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeakHoursLoadedCopyWith<PeakHoursLoaded> get copyWith => _$PeakHoursLoadedCopyWithImpl<PeakHoursLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeakHoursLoaded&&const DeepCollectionEquality().equals(other._peakHours, _peakHours));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_peakHours));

@override
String toString() {
  return 'ReportsState.peakHoursLoaded(peakHours: $peakHours)';
}


}

/// @nodoc
abstract mixin class $PeakHoursLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $PeakHoursLoadedCopyWith(PeakHoursLoaded value, $Res Function(PeakHoursLoaded) _then) = _$PeakHoursLoadedCopyWithImpl;
@useResult
$Res call({
 Map<int, int> peakHours
});




}
/// @nodoc
class _$PeakHoursLoadedCopyWithImpl<$Res>
    implements $PeakHoursLoadedCopyWith<$Res> {
  _$PeakHoursLoadedCopyWithImpl(this._self, this._then);

  final PeakHoursLoaded _self;
  final $Res Function(PeakHoursLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? peakHours = null,}) {
  return _then(PeakHoursLoaded(
peakHours: null == peakHours ? _self._peakHours : peakHours // ignore: cast_nullable_to_non_nullable
as Map<int, int>,
  ));
}


}

/// @nodoc


class AverageOrderValueLoaded implements ReportsState {
  const AverageOrderValueLoaded({required this.value});
  

 final  double value;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AverageOrderValueLoadedCopyWith<AverageOrderValueLoaded> get copyWith => _$AverageOrderValueLoadedCopyWithImpl<AverageOrderValueLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AverageOrderValueLoaded&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ReportsState.averageOrderValueLoaded(value: $value)';
}


}

/// @nodoc
abstract mixin class $AverageOrderValueLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $AverageOrderValueLoadedCopyWith(AverageOrderValueLoaded value, $Res Function(AverageOrderValueLoaded) _then) = _$AverageOrderValueLoadedCopyWithImpl;
@useResult
$Res call({
 double value
});




}
/// @nodoc
class _$AverageOrderValueLoadedCopyWithImpl<$Res>
    implements $AverageOrderValueLoadedCopyWith<$Res> {
  _$AverageOrderValueLoadedCopyWithImpl(this._self, this._then);

  final AverageOrderValueLoaded _self;
  final $Res Function(AverageOrderValueLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(AverageOrderValueLoaded(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class OrdersByStatusLoaded implements ReportsState {
  const OrdersByStatusLoaded({required final  Map<OrderStatus, List<Order>> ordersByStatus}): _ordersByStatus = ordersByStatus;
  

 final  Map<OrderStatus, List<Order>> _ordersByStatus;
 Map<OrderStatus, List<Order>> get ordersByStatus {
  if (_ordersByStatus is EqualUnmodifiableMapView) return _ordersByStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_ordersByStatus);
}


/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersByStatusLoadedCopyWith<OrdersByStatusLoaded> get copyWith => _$OrdersByStatusLoadedCopyWithImpl<OrdersByStatusLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersByStatusLoaded&&const DeepCollectionEquality().equals(other._ordersByStatus, _ordersByStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ordersByStatus));

@override
String toString() {
  return 'ReportsState.ordersByStatusLoaded(ordersByStatus: $ordersByStatus)';
}


}

/// @nodoc
abstract mixin class $OrdersByStatusLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $OrdersByStatusLoadedCopyWith(OrdersByStatusLoaded value, $Res Function(OrdersByStatusLoaded) _then) = _$OrdersByStatusLoadedCopyWithImpl;
@useResult
$Res call({
 Map<OrderStatus, List<Order>> ordersByStatus
});




}
/// @nodoc
class _$OrdersByStatusLoadedCopyWithImpl<$Res>
    implements $OrdersByStatusLoadedCopyWith<$Res> {
  _$OrdersByStatusLoadedCopyWithImpl(this._self, this._then);

  final OrdersByStatusLoaded _self;
  final $Res Function(OrdersByStatusLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ordersByStatus = null,}) {
  return _then(OrdersByStatusLoaded(
ordersByStatus: null == ordersByStatus ? _self._ordersByStatus : ordersByStatus // ignore: cast_nullable_to_non_nullable
as Map<OrderStatus, List<Order>>,
  ));
}


}

/// @nodoc


class ReportsError implements ReportsState {
  const ReportsError({required this.message});
  

 final  String message;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsErrorCopyWith<ReportsError> get copyWith => _$ReportsErrorCopyWithImpl<ReportsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReportsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReportsErrorCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory $ReportsErrorCopyWith(ReportsError value, $Res Function(ReportsError) _then) = _$ReportsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReportsErrorCopyWithImpl<$Res>
    implements $ReportsErrorCopyWith<$Res> {
  _$ReportsErrorCopyWithImpl(this._self, this._then);

  final ReportsError _self;
  final $Res Function(ReportsError) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ReportsError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
