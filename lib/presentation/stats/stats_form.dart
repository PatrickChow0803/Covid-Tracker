import 'package:covid_tracker/application/stats/stats_form/stats_form_bloc.dart';
import 'package:covid_tracker/infrastructure/stats/stats_repository.dart';
import 'file:///C:/Users/Agela/AndroidStudioProjects/personal/covid_tracker/lib/presentation/stats/stats_page/stats_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class StatsForm extends StatelessWidget {
  final statsRepo = StatsRepository();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatsFormBloc, StatsFormState>(
      listenWhen: (previous, current) => previous.navigating != current.navigating,
      listener: (context, state) {
        print('Listener ran');
        // if (state.covidStats.totalCases == null) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => StatsPage(
                  searchedStats: state.covidStats,
                )));
        // }
      },
      buildWhen: (previous, current) => previous.isSaving != current.isSaving,
      builder: (context, state) {
        return Stack(
          children: [
            StatsScaffoldForm(),
            SavingInProgressOverlay(isSaving: state.isSaving),
          ],
        );
      },
    );
  }
}

class StatsScaffoldForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Center(
        child: BlocBuilder<StatsFormBloc, StatsFormState>(
          builder: (context, state) {
            return PlatformButton(
              onPressed: () {
                context.read<StatsFormBloc>().add(
                      const StatsFormEvent.searchSelected('all'),
                    );
              },
              child: const Text('Test Get All'),
            );
          },
        ),
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({Key key, this.isSaving}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Visibility(
        visible: isSaving,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
