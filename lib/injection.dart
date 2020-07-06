import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'blocs/qod/qod_bloc.dart';
import 'blocs/quotes/quotes_bloc.dart';
import 'blocs/saved_quotes/saved_quotes_bloc.dart';
import 'data/repository/repository_impl.dart';
import 'data/sources/local/local_data_source.dart';
import 'data/sources/local/local_data_source_impl.dart';
import 'data/sources/remote/connectivity.dart';
import 'data/sources/remote/connectivity_impl.dart';
import 'data/sources/remote/remote_data_source.dart';
import 'data/sources/remote/remote_data_source_impl.dart';
import 'domain/model/quote_model.dart';
import 'domain/repository/quote_repository.dart';

final GetIt s1 = GetIt.instance;

Future<void> init() async {
  //! External
  s1.registerLazySingleton(() => DataConnectionChecker());
  s1.registerLazySingleton(() => Dio());
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive
    ..init(appDocumentDirectory.path)
    ..registerAdapter(QuoteModelAdapter());
  final quoteBox = await Hive.openBox('quoteBox');
  final quoteIDBox = await Hive.openBox('quoteIDBox');

  //! Data Sources
  s1.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(s1()));
  s1.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(quoteBox, quoteIDBox));
  s1.registerLazySingleton<Connectivity>(() => ConnectivityImpl(s1()));

  //! Repositories
  s1.registerLazySingleton<QuoteRepository>(() => RepositoryImpl(
        connectivity: s1(),
        localDataSource: s1(),
        remoteDataSource: s1(),
      ));

  //! Blocs
  s1.registerFactory(() => QodBloc(quoteRepository: s1()));
  s1.registerFactory(() => QuotesBloc(quoteRepository: s1()));
  s1.registerFactory(() => SavedQuotesBloc(quoteRepository: s1()));
}
