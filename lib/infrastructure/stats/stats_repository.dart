import 'package:covid_tracker/domain/stats/i_stats_facade.dart';
import 'package:covid_tracker/domain/stats/stats.dart';
import 'package:covid_tracker/domain/stats/stats_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// for injection
@LazySingleton(as: IStatsFacade)
class StatsRepository implements IStatsFacade {
  // 'COVID_API' is the name of the variable inside the .env file
  final apiKey = env['COVID_API'];

  static const baseUrl = 'https://covid-19-tracking.p.rapidapi.com/v1/';

  // Ex of total report call: https://covid-19-tracking.p.rapidapi.com/v1/all
  @override
  Future<Either<StatsFailure, Stats>> getStatsAll() async {
    try {
      final dio = Dio(BaseOptions(baseUrl: baseUrl, headers: {'x-rapidapi-key': apiKey}));
      final response = await dio.get('all');
      final json = response.data as Map<String, dynamic>;
      // print(json.toString());
      final stats = Stats.fromJson(json);
      // print(stats.toString());
      return right(stats);
    } on DioError catch (e) {
      if (e.response.statusCode > 300) {
        return left(const StatsFailure.unableToLocate());
      } else {
        return left(const StatsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<StatsFailure, Stats>> getStatsByCountry(String country) async {
    try {
      final dio = Dio(BaseOptions(baseUrl: baseUrl, headers: {'x-rapidapi-key': apiKey}));
      final response = await dio.get(country);
      final json = response.data as Map<String, dynamic>;
      print(json.toString());
      final stats = Stats.fromJson(json);
      print(stats.toString());
      return right(stats);
    } on DioError catch (e) {
      if (e.response.statusCode > 300) {
        return left(const StatsFailure.unableToLocate());
      } else {
        return left(const StatsFailure.unexpected());
      }
    }
  }
}
