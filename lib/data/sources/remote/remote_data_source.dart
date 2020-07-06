import '../../../domain/model/quote_model.dart';

abstract class RemoteDataSource {
  Future<List<QuoteModel>> getQuotesFromAPI(String category, int page);
  Future<QuoteModel> getQuoteOfDayFromAPI();
  void cancelRequest();
}
