import 'package:flutter/material.dart';

class StatsDetailWidget extends StatelessWidget {
  final String statsDetail;
  final String statsNumber;

  const StatsDetailWidget({Key key, this.statsDetail, this.statsNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(statsDetail),
      trailing: Text(statsNumber),
    );
  }
}
