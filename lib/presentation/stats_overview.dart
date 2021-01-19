import 'package:covid_tracker/infrastructure/stats/stats_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class StatsOverview extends StatelessWidget {
  final statsRepo = StatsRepository();
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Center(
        child: PlatformButton(
          onPressed: () {
            final stats = statsRepo.getStatsByCountry('USA');
          },
          child: const Text('Test getStatsByCountry'),
        ),
      ),
    );
  }
}
