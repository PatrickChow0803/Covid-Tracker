import 'package:covid_tracker/domain/stats/stats.dart';
import 'package:covid_tracker/presentation/stats/stats_page/stats_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class StatsPage extends StatelessWidget {
  final Stats searchedStats;

  const StatsPage({Key key, this.searchedStats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StatsDetailWidget(
      statsDetail: searchedStats.totalCases,
      statsNumber: searchedStats.totalOfDeaths,
    ));
  }
}
