import '../../../domain/model/quote_model.dart';

abstract class LocalDataSource {
  Future<List<QuoteModel>> getSavedQuotes();
  Future<void> addQuoteToCache(QuoteModel quote);
  Future<void> removeQuoteFromCache(QuoteModel quote);
}
