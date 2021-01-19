import 'package:covid_tracker/presentation/stats_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

Future<void> main() async {
  // used to load the file that has the api key
  await DotEnv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Covid Tracker',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: StatsOverview(),
    );
  }
}
