import 'package:covid_tracker/application/stats/stats_form/stats_form_bloc.dart';
import 'package:covid_tracker/injection.dart';
import 'package:covid_tracker/presentation/stats/stats_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  // used to load the file that has the api key
  await DotEnv.load(fileName: '.env');

  // Sets up the injection. Without this line, you'll get the error in the comment below
  // Object/factory with  type StatsFormBloc is not registered inside GetIt.
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<StatsFormBloc>()),
      ],
      child: PlatformApp(
        title: 'Covid Tracker',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        home: StatsForm(),
      ),
    );
  }
}
