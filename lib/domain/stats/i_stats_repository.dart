import 'package:covid_tracker/domain/stats/stats.dart';
import 'package:covid_tracker/domain/stats/stats_failure.dart';
import 'package:dartz/dartz.dart';

// I in the class name stands for Interface
// Treat this abstract class as an Interface.

// Abstract classes can have constants, members, method stubs (methods without a body)
// whereas interfaces can only have constants and methods stubs.

abstract class IStatsRepository {
  Future<Either<StatsFailure, Stats>> getStatsByCountryAndState(String country, String state);

  Future<Either<StatsFailure, Stats>> getStatsByCountry(String country);
}
