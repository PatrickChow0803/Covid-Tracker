import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_covid_failure.freezed.dart';

@freezed
abstract class SearchCovidFailure with _$SearchCovidFailure {
  const factory SearchCovidFailure.unexpected() = _Unexpected;
  const factory SearchCovidFailure.unableToLocate() = _unableToLocate;
}
