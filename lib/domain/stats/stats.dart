import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';

@freezed
abstract class Stats implements _$Stats {
  const Stats._();

  const factory Stats({
    @required final String country,
    @required final String totalCases,
    @required final String activeCases,
    @required final String newCases,
    @required final String newDeaths,
    @required final String totalOfDeaths,
    @required final String totalOfRecovered,
    @required final String dateUpdated,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> jsonMap) {
    return Stats(
        country: jsonMap['Country_text'] as String,
        totalCases: jsonMap['Total Cases_text'] as String,
        activeCases: jsonMap['Active Cases_text'] as String,
        newCases: jsonMap['New Cases_text'] as String,
        newDeaths: jsonMap['New Deaths_text'] as String,
        totalOfDeaths: jsonMap['Total Deaths_text'] as String,
        totalOfRecovered: jsonMap['Total Recovered_text'] as String,
        dateUpdated: jsonMap['Last Update'] as String);
  }
}
