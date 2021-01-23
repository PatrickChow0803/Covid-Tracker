import 'package:covid_tracker/domain/stats/stats.dart';
import 'package:covid_tracker/presentation/stats/stats_page/stats_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

const List<String> statsDetail = [
  'Country: ',
  'Total Cases',
  'Active Cases',
  'New Cases',
  'New Deaths',
  'Total Deaths',
  'Total Recovered',
  'Date Updated (UTC)',
];

class StatsPage extends StatelessWidget {
  final Stats searchedStats;

  const StatsPage({Key key, this.searchedStats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> statsNumber = [
      searchedStats.country,
      searchedStats.totalCases,
      searchedStats.activeCases,
      searchedStats.newCases,
      searchedStats.newDeaths,
      searchedStats.totalOfDeaths,
      searchedStats.totalOfRecovered,
      searchedStats.dateUpdated,
    ];
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => StatsDetailWidget(
          statsDetail: statsDetail[index],
          statsNumber: statsNumber[index],
        ),
        itemCount: statsDetail.length,
      ),
    );
  }
}
