// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'domain/stats/i_stats_repository.dart';
import 'application/stats/stats_form/stats_form_bloc.dart';
import 'infrastructure/stats/stats_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<IStatsRepository>(() => StatsRepository());
  gh.factory<StatsFormBloc>(() => StatsFormBloc(get<IStatsRepository>()));
  return get;
}
