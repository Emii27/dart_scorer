// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_throw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerRound {

 int get throwsPerRound; List<PlayerThrow> get throws;
/// Create a copy of PlayerRound
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerRoundCopyWith<PlayerRound> get copyWith => _$PlayerRoundCopyWithImpl<PlayerRound>(this as PlayerRound, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerRound&&(identical(other.throwsPerRound, throwsPerRound) || other.throwsPerRound == throwsPerRound)&&const DeepCollectionEquality().equals(other.throws, throws));
}


@override
int get hashCode => Object.hash(runtimeType,throwsPerRound,const DeepCollectionEquality().hash(throws));

@override
String toString() {
  return 'PlayerRound(throwsPerRound: $throwsPerRound, throws: $throws)';
}


}

/// @nodoc
abstract mixin class $PlayerRoundCopyWith<$Res>  {
  factory $PlayerRoundCopyWith(PlayerRound value, $Res Function(PlayerRound) _then) = _$PlayerRoundCopyWithImpl;
@useResult
$Res call({
 int throwsPerRound, List<PlayerThrow> throws
});




}
/// @nodoc
class _$PlayerRoundCopyWithImpl<$Res>
    implements $PlayerRoundCopyWith<$Res> {
  _$PlayerRoundCopyWithImpl(this._self, this._then);

  final PlayerRound _self;
  final $Res Function(PlayerRound) _then;

/// Create a copy of PlayerRound
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? throwsPerRound = null,Object? throws = null,}) {
  return _then(_self.copyWith(
throwsPerRound: null == throwsPerRound ? _self.throwsPerRound : throwsPerRound // ignore: cast_nullable_to_non_nullable
as int,throws: null == throws ? _self.throws : throws // ignore: cast_nullable_to_non_nullable
as List<PlayerThrow>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerRound].
extension PlayerRoundPatterns on PlayerRound {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerRound value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerRound() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerRound value)  $default,){
final _that = this;
switch (_that) {
case _PlayerRound():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerRound value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerRound() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int throwsPerRound,  List<PlayerThrow> throws)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerRound() when $default != null:
return $default(_that.throwsPerRound,_that.throws);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int throwsPerRound,  List<PlayerThrow> throws)  $default,) {final _that = this;
switch (_that) {
case _PlayerRound():
return $default(_that.throwsPerRound,_that.throws);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int throwsPerRound,  List<PlayerThrow> throws)?  $default,) {final _that = this;
switch (_that) {
case _PlayerRound() when $default != null:
return $default(_that.throwsPerRound,_that.throws);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerRound implements PlayerRound {
  const _PlayerRound({required this.throwsPerRound, required final  List<PlayerThrow> throws}): _throws = throws;
  

@override final  int throwsPerRound;
 final  List<PlayerThrow> _throws;
@override List<PlayerThrow> get throws {
  if (_throws is EqualUnmodifiableListView) return _throws;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_throws);
}


/// Create a copy of PlayerRound
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerRoundCopyWith<_PlayerRound> get copyWith => __$PlayerRoundCopyWithImpl<_PlayerRound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerRound&&(identical(other.throwsPerRound, throwsPerRound) || other.throwsPerRound == throwsPerRound)&&const DeepCollectionEquality().equals(other._throws, _throws));
}


@override
int get hashCode => Object.hash(runtimeType,throwsPerRound,const DeepCollectionEquality().hash(_throws));

@override
String toString() {
  return 'PlayerRound(throwsPerRound: $throwsPerRound, throws: $throws)';
}


}

/// @nodoc
abstract mixin class _$PlayerRoundCopyWith<$Res> implements $PlayerRoundCopyWith<$Res> {
  factory _$PlayerRoundCopyWith(_PlayerRound value, $Res Function(_PlayerRound) _then) = __$PlayerRoundCopyWithImpl;
@override @useResult
$Res call({
 int throwsPerRound, List<PlayerThrow> throws
});




}
/// @nodoc
class __$PlayerRoundCopyWithImpl<$Res>
    implements _$PlayerRoundCopyWith<$Res> {
  __$PlayerRoundCopyWithImpl(this._self, this._then);

  final _PlayerRound _self;
  final $Res Function(_PlayerRound) _then;

/// Create a copy of PlayerRound
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? throwsPerRound = null,Object? throws = null,}) {
  return _then(_PlayerRound(
throwsPerRound: null == throwsPerRound ? _self.throwsPerRound : throwsPerRound // ignore: cast_nullable_to_non_nullable
as int,throws: null == throws ? _self._throws : throws // ignore: cast_nullable_to_non_nullable
as List<PlayerThrow>,
  ));
}


}

// dart format on
