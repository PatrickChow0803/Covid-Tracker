part of 'stats_form_bloc.dart';

@freezed
abstract class StatsFormState with _$StatsFormState {
  const factory StatsFormState({
    @required String selectedCountry,
    // for displaying the progress indicator
    @required bool isSaving,
  }) = _StatsFormState;

  factory StatsFormState.initial() => const StatsFormState(selectedCountry: '', isSaving: false);
}
