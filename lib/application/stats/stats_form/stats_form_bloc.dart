import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'stats_form_event.dart';
part 'stats_form_state.dart';

part 'stats_form_bloc.freezed.dart';

class StatsFormBloc extends Bloc<StatsFormEvent, StatsFormState> {
  StatsFormBloc() : super(StatsFormState.initial());

  @override
  Stream<StatsFormState> mapEventToState(
    StatsFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
