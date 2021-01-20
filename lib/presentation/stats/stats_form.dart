import 'package:covid_tracker/application/stats/stats_form/stats_form_bloc.dart';
import 'package:covid_tracker/infrastructure/stats/stats_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class StatsForm extends StatelessWidget {
  final statsRepo = StatsRepository();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsFormBloc, StatsFormState>(
      builder: (context, state) {
        return PlatformScaffold(
          body: Center(
            child: PlatformButton(
              onPressed: () {
                context.read<StatsFormBloc>().add(const StatsFormEvent.searchSelected('all'));
                print('Called from PlayformButton${state.covidStats}');
              },
              child: const Text('Test Get All'),
            ),
          ),
        );
      },
    );
  }
}
