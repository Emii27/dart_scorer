// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cricket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CricketState {

 GameConfig get config; int get nbPlayers; List<PlayerRound> get rounds;
/// Create a copy of CricketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CricketStateCopyWith<CricketState> get copyWith => _$CricketStateCopyWithImpl<CricketState>(this as CricketState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CricketState&&(identical(other.config, config) || other.config == config)&&(identical(other.nbPlayers, nbPlayers) || other.nbPlayers == nbPlayers)&&const DeepCollectionEquality().equals(other.rounds, rounds));
}


@override
int get hashCode => Object.hash(runtimeType,config,nbPlayers,const DeepCollectionEquality().hash(rounds));

@override
String toString() {
  return 'CricketState(config: $config, nbPlayers: $nbPlayers, rounds: $rounds)';
}


}

/// @nodoc
abstract mixin class $CricketStateCopyWith<$Res>  {
  factory $CricketStateCopyWith(CricketState value, $Res Function(CricketState) _then) = _$CricketStateCopyWithImpl;
@useResult
$Res call({
 GameConfig config, int nbPlayers, List<PlayerRound> rounds
});




}
/// @nodoc
class _$CricketStateCopyWithImpl<$Res>
    implements $CricketStateCopyWith<$Res> {
  _$CricketStateCopyWithImpl(this._self, this._then);

  final CricketState _self;
  final $Res Function(CricketState) _then;

/// Create a copy of CricketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? config = null,Object? nbPlayers = null,Object? rounds = null,}) {
  return _then(_self.copyWith(
config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as GameConfig,nbPlayers: null == nbPlayers ? _self.nbPlayers : nbPlayers // ignore: cast_nullable_to_non_nullable
as int,rounds: null == rounds ? _self.rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<PlayerRound>,
  ));
}

}


/// Adds pattern-matching-related methods to [CricketState].
extension CricketStatePatterns on CricketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CricketState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CricketState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CricketState value)  $default,){
final _that = this;
switch (_that) {
case _CricketState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CricketState value)?  $default,){
final _that = this;
switch (_that) {
case _CricketState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameConfig config,  int nbPlayers,  List<PlayerRound> rounds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CricketState() when $default != null:
return $default(_that.config,_that.nbPlayers,_that.rounds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameConfig config,  int nbPlayers,  List<PlayerRound> rounds)  $default,) {final _that = this;
switch (_that) {
case _CricketState():
return $default(_that.config,_that.nbPlayers,_that.rounds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameConfig config,  int nbPlayers,  List<PlayerRound> rounds)?  $default,) {final _that = this;
switch (_that) {
case _CricketState() when $default != null:
return $default(_that.config,_that.nbPlayers,_that.rounds);case _:
  return null;

}
}

}

/// @nodoc


class _CricketState implements CricketState {
  const _CricketState({required this.config, required this.nbPlayers, required final  List<PlayerRound> rounds}): _rounds = rounds;
  

@override final  GameConfig config;
@override final  int nbPlayers;
 final  List<PlayerRound> _rounds;
@override List<PlayerRound> get rounds {
  if (_rounds is EqualUnmodifiableListView) return _rounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rounds);
}


/// Create a copy of CricketState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CricketStateCopyWith<_CricketState> get copyWith => __$CricketStateCopyWithImpl<_CricketState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CricketState&&(identical(other.config, config) || other.config == config)&&(identical(other.nbPlayers, nbPlayers) || other.nbPlayers == nbPlayers)&&const DeepCollectionEquality().equals(other._rounds, _rounds));
}


@override
int get hashCode => Object.hash(runtimeType,config,nbPlayers,const DeepCollectionEquality().hash(_rounds));

@override
String toString() {
  return 'CricketState(config: $config, nbPlayers: $nbPlayers, rounds: $rounds)';
}


}

/// @nodoc
abstract mixin class _$CricketStateCopyWith<$Res> implements $CricketStateCopyWith<$Res> {
  factory _$CricketStateCopyWith(_CricketState value, $Res Function(_CricketState) _then) = __$CricketStateCopyWithImpl;
@override @useResult
$Res call({
 GameConfig config, int nbPlayers, List<PlayerRound> rounds
});




}
/// @nodoc
class __$CricketStateCopyWithImpl<$Res>
    implements _$CricketStateCopyWith<$Res> {
  __$CricketStateCopyWithImpl(this._self, this._then);

  final _CricketState _self;
  final $Res Function(_CricketState) _then;

/// Create a copy of CricketState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? config = null,Object? nbPlayers = null,Object? rounds = null,}) {
  return _then(_CricketState(
config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as GameConfig,nbPlayers: null == nbPlayers ? _self.nbPlayers : nbPlayers // ignore: cast_nullable_to_non_nullable
as int,rounds: null == rounds ? _self._rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<PlayerRound>,
  ));
}


}

// dart format on
