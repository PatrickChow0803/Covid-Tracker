import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';

@freezed
abstract class Stats implements _$Stats {
  const Stats._();

  const factory Stats({
    @required final String state,
    @required final int totalOfCases,
    @required final int totalOfDeaths,
    @required final int totalOfRecovered,
    @required final String dateUpdated,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> jsonMap) {
    return Stats(
        state: jsonMap['location']['provinceOrState'] as String,
        totalOfCases: jsonMap['stats']['totalConfirmedCases'] as int,
        totalOfDeaths: jsonMap['stats']['totalDeaths'] as int,
        totalOfRecovered: jsonMap['stats']['totalRecoveredCases'] as int,
        dateUpdated: jsonMap['updatedDateTime'] as String);
  }
}
