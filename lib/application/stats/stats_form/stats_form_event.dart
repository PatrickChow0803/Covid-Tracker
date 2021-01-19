part of 'stats_form_bloc.dart';

@freezed
abstract class StatsFormEvent with _$StatsFormEvent {
  const factory StatsFormEvent.initialized() = _Initialized;

  const factory StatsFormEvent.countrySelected() = _CountrySelected;
  const factory StatsFormEvent.searchSelected(String country) = _SearchSelected;
}
