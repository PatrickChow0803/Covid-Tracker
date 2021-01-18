import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_failure.freezed.dart';

@freezed
abstract class StatsFailure with _$StatsFailure {
  const factory StatsFailure.unexpected() = _Unexpected;
  const factory StatsFailure.unableToLocate() = _UnableToLocate;
}
