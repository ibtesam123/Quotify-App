import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../model/quote_model.dart';

abstract class QuoteRepository {
  Future<Either<Failure, List<QuoteModel>>> getQuotesByCategory(
    String category,
    int page,
  );
  
  Future<Either<Failure, QuoteModel>> getQuoteOfTheDay();

  Future<Either<Failure,List<QuoteModel>>> getSavedQuotes();

  Future<Either<Failure,Unit>> saveQuoteOffline(QuoteModel quote);

  Future<Either<Failure,Unit>> removeSavedQuote(QuoteModel quote);

  void cancelRequest();
}
