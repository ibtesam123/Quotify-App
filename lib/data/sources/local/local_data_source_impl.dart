import 'package:hive/hive.dart';
import '../../../domain/model/quote_model.dart';

import '../../../core/error/exceptions.dart';
import 'local_data_source.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final Box quoteBox;
  final Box quoteIDBox;

  LocalDataSourceImpl(this.quoteBox, this.quoteIDBox);
  @override
  Future<List<QuoteModel>> getSavedQuotes() async {
    if (quoteBox.containsKey('saved_quotes')) {
      List<QuoteModel> savedQuotes = List<QuoteModel>();
      for (QuoteModel quoteModel in quoteBox.get('saved_quotes'))
        savedQuotes.add(quoteModel);
      if (savedQuotes.length == 0) throw NoDataFoundException();
      return savedQuotes;
    } else
      throw NoDataFoundException();
  }

  @override
  Future<void> addQuoteToCache(QuoteModel quote) async {
    List<QuoteModel> savedQuotes;
    try {
      savedQuotes = await getSavedQuotes();
    } on NoDataFoundException catch (_) {
      savedQuotes = List<QuoteModel>();
    }
    if (savedQuotes.contains(quote)) throw QuoteAlreadyExistsException();
    savedQuotes.add(quote);
    quoteBox.put('saved_quotes', savedQuotes);
  }

  @override
  Future<void> removeQuoteFromCache(QuoteModel quote) async {
    try {
      List<QuoteModel> savedQuotes = await getSavedQuotes();

      savedQuotes.removeWhere((element) => element.id == quote.id);

      quoteBox.put('saved_quotes', savedQuotes);
    } on NoDataFoundException catch (_) {
      throw CacheException();
    }
  }
}
