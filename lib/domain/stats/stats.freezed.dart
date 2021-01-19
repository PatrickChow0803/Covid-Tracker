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
      {@required String country,
      @required String totalCases,
      @required String activeCases,
      @required String newCases,
      @required String newDeaths,
      @required String totalOfDeaths,
      @required String totalOfRecovered,
      @required String dateUpdated}) {
    return _Stats(
      country: country,
      totalCases: totalCases,
      activeCases: activeCases,
      newCases: newCases,
      newDeaths: newDeaths,
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
  String get country;
  String get totalCases;
  String get activeCases;
  String get newCases;
  String get newDeaths;
  String get totalOfDeaths;
  String get totalOfRecovered;
  String get dateUpdated;

  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res>;
  $Res call(
      {String country,
      String totalCases,
      String activeCases,
      String newCases,
      String newDeaths,
      String totalOfDeaths,
      String totalOfRecovered,
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
    Object country = freezed,
    Object totalCases = freezed,
    Object activeCases = freezed,
    Object newCases = freezed,
    Object newDeaths = freezed,
    Object totalOfDeaths = freezed,
    Object totalOfRecovered = freezed,
    Object dateUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed ? _value.country : country as String,
      totalCases:
          totalCases == freezed ? _value.totalCases : totalCases as String,
      activeCases:
          activeCases == freezed ? _value.activeCases : activeCases as String,
      newCases: newCases == freezed ? _value.newCases : newCases as String,
      newDeaths: newDeaths == freezed ? _value.newDeaths : newDeaths as String,
      totalOfDeaths: totalOfDeaths == freezed
          ? _value.totalOfDeaths
          : totalOfDeaths as String,
      totalOfRecovered: totalOfRecovered == freezed
          ? _value.totalOfRecovered
          : totalOfRecovered as String,
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
      {String country,
      String totalCases,
      String activeCases,
      String newCases,
      String newDeaths,
      String totalOfDeaths,
      String totalOfRecovered,
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
    Object country = freezed,
    Object totalCases = freezed,
    Object activeCases = freezed,
    Object newCases = freezed,
    Object newDeaths = freezed,
    Object totalOfDeaths = freezed,
    Object totalOfRecovered = freezed,
    Object dateUpdated = freezed,
  }) {
    return _then(_Stats(
      country: country == freezed ? _value.country : country as String,
      totalCases:
          totalCases == freezed ? _value.totalCases : totalCases as String,
      activeCases:
          activeCases == freezed ? _value.activeCases : activeCases as String,
      newCases: newCases == freezed ? _value.newCases : newCases as String,
      newDeaths: newDeaths == freezed ? _value.newDeaths : newDeaths as String,
      totalOfDeaths: totalOfDeaths == freezed
          ? _value.totalOfDeaths
          : totalOfDeaths as String,
      totalOfRecovered: totalOfRecovered == freezed
          ? _value.totalOfRecovered
          : totalOfRecovered as String,
      dateUpdated:
          dateUpdated == freezed ? _value.dateUpdated : dateUpdated as String,
    ));
  }
}

/// @nodoc
class _$_Stats extends _Stats {
  const _$_Stats(
      {@required this.country,
      @required this.totalCases,
      @required this.activeCases,
      @required this.newCases,
      @required this.newDeaths,
      @required this.totalOfDeaths,
      @required this.totalOfRecovered,
      @required this.dateUpdated})
      : assert(country != null),
        assert(totalCases != null),
        assert(activeCases != null),
        assert(newCases != null),
        assert(newDeaths != null),
        assert(totalOfDeaths != null),
        assert(totalOfRecovered != null),
        assert(dateUpdated != null),
        super._();

  @override
  final String country;
  @override
  final String totalCases;
  @override
  final String activeCases;
  @override
  final String newCases;
  @override
  final String newDeaths;
  @override
  final String totalOfDeaths;
  @override
  final String totalOfRecovered;
  @override
  final String dateUpdated;

  @override
  String toString() {
    return 'Stats(country: $country, totalCases: $totalCases, activeCases: $activeCases, newCases: $newCases, newDeaths: $newDeaths, totalOfDeaths: $totalOfDeaths, totalOfRecovered: $totalOfRecovered, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stats &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.totalCases, totalCases) ||
                const DeepCollectionEquality()
                    .equals(other.totalCases, totalCases)) &&
            (identical(other.activeCases, activeCases) ||
                const DeepCollectionEquality()
                    .equals(other.activeCases, activeCases)) &&
            (identical(other.newCases, newCases) ||
                const DeepCollectionEquality()
                    .equals(other.newCases, newCases)) &&
            (identical(other.newDeaths, newDeaths) ||
                const DeepCollectionEquality()
                    .equals(other.newDeaths, newDeaths)) &&
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
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(totalCases) ^
      const DeepCollectionEquality().hash(activeCases) ^
      const DeepCollectionEquality().hash(newCases) ^
      const DeepCollectionEquality().hash(newDeaths) ^
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
      {@required String country,
      @required String totalCases,
      @required String activeCases,
      @required String newCases,
      @required String newDeaths,
      @required String totalOfDeaths,
      @required String totalOfRecovered,
      @required String dateUpdated}) = _$_Stats;

  @override
  String get country;
  @override
  String get totalCases;
  @override
  String get activeCases;
  @override
  String get newCases;
  @override
  String get newDeaths;
  @override
  String get totalOfDeaths;
  @override
  String get totalOfRecovered;
  @override
  String get dateUpdated;
  @override
  @JsonKey(ignore: true)
  _$StatsCopyWith<_Stats> get copyWith;
}
