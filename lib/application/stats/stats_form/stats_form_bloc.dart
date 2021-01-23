import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid_tracker/domain/stats/i_stats_facade.dart';
import 'package:covid_tracker/domain/stats/stats.dart';
import 'package:covid_tracker/infrastructure/stats/stats_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'stats_form_event.dart';
part 'stats_form_state.dart';

part 'stats_form_bloc.freezed.dart';

@injectable
class StatsFormBloc extends Bloc<StatsFormEvent, StatsFormState> {
  final IStatsFacade _statsFacade;
  StatsFormBloc(this._statsFacade) : super(StatsFormState.initial());

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
        final covidStatss = await _statsFacade.getStatsAll();
        print("After Call:" + covidStatss.toString());
        yield state.copyWith(
          isSaving: false,
          covidStats: covidStatss.fold((l) {
            print('failure');
            return null;
          }, (r) {
            // print(r.toString());
            return r;
          }),
          navigating: !state.navigating,
        );
        // print(state.covidStats.toString());
      },
    );
  }
}
