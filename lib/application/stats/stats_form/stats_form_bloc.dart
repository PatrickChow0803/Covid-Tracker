import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid_tracker/domain/stats/i_stats_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'stats_form_event.dart';
part 'stats_form_state.dart';

part 'stats_form_bloc.freezed.dart';

@injectable
class StatsFormBloc extends Bloc<StatsFormEvent, StatsFormState> {
  final IStatsRepository _statsRepository;
  StatsFormBloc(this._statsRepository) : super(StatsFormState.initial());

  @override
  Stream<StatsFormState> mapEventToState(
    StatsFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {},
      countrySelected: (e) async* {
        // selectedCountry comes from stats_form_state
        yield state.copyWith(selectedCountry: e.toString());
        print(e.toString());
      },
      searchSelected: (e) async* {
        yield state.copyWith(isSaving: true);
        await _statsRepository.getStatsByCountry(state.selectedCountry);
        yield state.copyWith(isSaving: false);
      },
    );
  }
}
