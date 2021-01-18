// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatsTearOff {
  const _$StatsTearOff();

// ignore: unused_element
  _Stats call(
      {@required String state,
      @required int totalOfCases,
      @required int totalOfDeaths,
      @required int totalOfRecovered,
      @required String dateUpdated}) {
    return _Stats(
      state: state,
      totalOfCases: totalOfCases,
      totalOfDeaths: totalOfDeaths,
      totalOfRecovered: totalOfRecovered,
      dateUpdated: dateUpdated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Stats = _$StatsTearOff();

/// @nodoc
mixin _$Stats {
  String get state;
  int get totalOfCases;
  int get totalOfDeaths;
  int get totalOfRecovered;
  String get dateUpdated;

  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res>;
  $Res call(
      {String state,
      int totalOfCases,
      int totalOfDeaths,
      int totalOfRecovered,
      String dateUpdated});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res> implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  final Stats _value;
  // ignore: unused_field
  final $Res Function(Stats) _then;

  @override
  $Res call({
    Object state = freezed,
    Object totalOfCases = freezed,
    Object totalOfDeaths = freezed,
    Object totalOfRecovered = freezed,
    Object dateUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as String,
      totalOfCases:
          totalOfCases == freezed ? _value.totalOfCases : totalOfCases as int,
      totalOfDeaths: totalOfDeaths == freezed
          ? _value.totalOfDeaths
          : totalOfDeaths as int,
      totalOfRecovered: totalOfRecovered == freezed
          ? _value.totalOfRecovered
          : totalOfRecovered as int,
      dateUpdated:
          dateUpdated == freezed ? _value.dateUpdated : dateUpdated as String,
    ));
  }
}

/// @nodoc
abstract class _$StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$StatsCopyWith(_Stats value, $Res Function(_Stats) then) =
      __$StatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String state,
      int totalOfCases,
      int totalOfDeaths,
      int totalOfRecovered,
      String dateUpdated});
}

/// @nodoc
class __$StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res>
    implements _$StatsCopyWith<$Res> {
  __$StatsCopyWithImpl(_Stats _value, $Res Function(_Stats) _then)
      : super(_value, (v) => _then(v as _Stats));

  @override
  _Stats get _value => super._value as _Stats;

  @override
  $Res call({
    Object state = freezed,
    Object totalOfCases = freezed,
    Object totalOfDeaths = freezed,
    Object totalOfRecovered = freezed,
    Object dateUpdated = freezed,
  }) {
    return _then(_Stats(
      state: state == freezed ? _value.state : state as String,
      totalOfCases:
          totalOfCases == freezed ? _value.totalOfCases : totalOfCases as int,
      totalOfDeaths: totalOfDeaths == freezed
          ? _value.totalOfDeaths
          : totalOfDeaths as int,
      totalOfRecovered: totalOfRecovered == freezed
          ? _value.totalOfRecovered
          : totalOfRecovered as int,
      dateUpdated:
          dateUpdated == freezed ? _value.dateUpdated : dateUpdated as String,
    ));
  }
}

/// @nodoc
class _$_Stats extends _Stats {
  const _$_Stats(
      {@required this.state,
      @required this.totalOfCases,
      @required this.totalOfDeaths,
      @required this.totalOfRecovered,
      @required this.dateUpdated})
      : assert(state != null),
        assert(totalOfCases != null),
        assert(totalOfDeaths != null),
        assert(totalOfRecovered != null),
        assert(dateUpdated != null),
        super._();

  @override
  final String state;
  @override
  final int totalOfCases;
  @override
  final int totalOfDeaths;
  @override
  final int totalOfRecovered;
  @override
  final String dateUpdated;

  @override
  String toString() {
    return 'Stats(state: $state, totalOfCases: $totalOfCases, totalOfDeaths: $totalOfDeaths, totalOfRecovered: $totalOfRecovered, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stats &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.totalOfCases, totalOfCases) ||
                const DeepCollectionEquality()
                    .equals(other.totalOfCases, totalOfCases)) &&
            (identical(other.totalOfDeaths, totalOfDeaths) ||
                const DeepCollectionEquality()
                    .equals(other.totalOfDeaths, totalOfDeaths)) &&
            (identical(other.totalOfRecovered, totalOfRecovered) ||
                const DeepCollectionEquality()
                    .equals(other.totalOfRecovered, totalOfRecovered)) &&
            (identical(other.dateUpdated, dateUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dateUpdated, dateUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(totalOfCases) ^
      const DeepCollectionEquality().hash(totalOfDeaths) ^
      const DeepCollectionEquality().hash(totalOfRecovered) ^
      const DeepCollectionEquality().hash(dateUpdated);

  @JsonKey(ignore: true)
  @override
  _$StatsCopyWith<_Stats> get copyWith =>
      __$StatsCopyWithImpl<_Stats>(this, _$identity);
}

abstract class _Stats extends Stats {
  const _Stats._() : super._();
  const factory _Stats(
      {@required String state,
      @required int totalOfCases,
      @required int totalOfDeaths,
      @required int totalOfRecovered,
      @required String dateUpdated}) = _$_Stats;

  @override
  String get state;
  @override
  int get totalOfCases;
  @override
  int get totalOfDeaths;
  @override
  int get totalOfRecovered;
  @override
  String get dateUpdated;
  @override
  @JsonKey(ignore: true)
  _$StatsCopyWith<_Stats> get copyWith;
}
