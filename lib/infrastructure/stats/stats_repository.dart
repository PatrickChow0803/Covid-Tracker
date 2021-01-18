import 'package:covid_tracker/domain/stats/i_stats_repository.dart';
import 'package:covid_tracker/domain/stats/stats.dart';
import 'package:covid_tracker/domain/stats/stats_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// for injection
@LazySingleton(as: IStatsRepository)
class StatsRepository implements IStatsRepository {
  // 'COVID_API' is the name of the variable inside the .env file
  final apiKey = env['COVID_API'];

  static const statsPath = 'https://coronavirus-smartable.p.rapidapi.com/stats/v1/';

  @override
  Future<Either<StatsFailure, Stats>> getStatsByCountry(String country) async {
    try {
      final dio = Dio(BaseOptions(baseUrl: statsPath, headers: {'x-rapidapi-key': apiKey}));
      final response = await dio.get(country);
      final json = response.data as Map<String, dynamic>;
      return right(Stats.fromJson(json));
    } on DioError catch (e) {
      if (e.response.statusCode > 300) {
        return left(const StatsFailure.unableToLocate());
      } else {
        return left(const StatsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<StatsFailure, Stats>> getStatsByCountryAndState(
      String country, String state) async {
    // TODO: implement getStatsByCountryAndState
    throw UnimplementedError();
  }
}
