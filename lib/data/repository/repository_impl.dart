import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../core/validators.dart';
import '../../domain/model/quote_model.dart';
import '../../domain/repository/quote_repository.dart';
import '../sources/local/local_data_source.dart';
import '../sources/remote/connectivity.dart';
import '../sources/remote/remote_data_source.dart';

class RepositoryImpl implements QuoteRepository {
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;
  final Connectivity connectivity;

  RepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.connectivity,
  });

  @override
  Future<Either<Failure, QuoteModel>> getQuoteOfTheDay() async {
    if (await connectivity.hasInternetConnection()) {
      try {
        QuoteModel quoteModel = await remoteDataSource.getQuoteOfDayFromAPI();
        return validateQuote(quoteModel);
      } on ServerException catch (_) {
        return Left(ServerFailure('Server Failure'));
      }
    } else {
      return Left(NoInternetConnectionFailure('No Internet Connection'));
    }
  }

  @override
  Future<Either<Failure, List<QuoteModel>>> getQuotesByCategory(
    String category,
    int page,
  ) async {
    if (await connectivity.hasInternetConnection()) {
      List<QuoteModel> quotes;
      try {
        //Fetch Data from API
        quotes = await remoteDataSource.getQuotesFromAPI(category, page);

        //Validate quotes
        for (QuoteModel quote in quotes) {
          final validatedQuote = validateQuote(quote);
          if (validatedQuote.isLeft())
            return Left(ValueFailure('Invalid Quote'));
        }
        return Right(quotes);
      } on ServerException catch (_) {
        return Left(ServerFailure('Server Failure'));
      }
    } else {
      return Left(NoInternetConnectionFailure('No Internet Connection'));
    }
  }

  @override
  Future<Either<Failure, List<QuoteModel>>> getSavedQuotes() async {
    try {
      final savedQuotes = await localDataSource.getSavedQuotes();
      return Right(savedQuotes);
    } on NoDataFoundException catch (_) {
      return Left(NoDataFoundFailure('No Saved Quotes Found.'));
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  void cancelRequest() => remoteDataSource.cancelRequest();

  @override
  Future<Either<Failure, Unit>> saveQuoteOffline(QuoteModel quote) async {
    try {
      await localDataSource.addQuoteToCache(quote);
      return Right(unit);
    } on CacheException catch (_) {
      return Left(CacheFailure("Can't Save Quote Offline"));
    } on QuoteAlreadyExistsException catch (_) {
      return Left(CacheFailure('Quote already exists'));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeSavedQuote(QuoteModel quote) async {
    try {
      await localDataSource.removeQuoteFromCache(quote);
      return Right(unit);
    } on CacheException catch (_) {
      return Left(CacheFailure("Quote can't be removed"));
    }
  }
}
