import 'package:dio/dio.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/util.dart';
import '../../../domain/model/quote_model.dart';
import 'remote_data_source.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final Dio dio;

  final CancelToken _cancelToken = CancelToken();
  static const _API_URL = 'https://quotify-test.herokuapp.com';

  RemoteDataSourceImpl(this.dio);

  @override
  void cancelRequest() {
    _cancelToken.cancel();
  }

  @override
  Future<QuoteModel> getQuoteOfDayFromAPI() async {
    try {
      //Make Request
      Response response =
          await dio.get('$_API_URL/qod', cancelToken: _cancelToken);

      //Get Request Body
      Map<String, dynamic> data = response.data;

      //Make it in a quote
      QuoteModel quote = QuoteModel.fromMap(
        data['quote'],
        getRandomQuoteColor(),
      );

      //return quote
      return quote;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<QuoteModel>> getQuotesFromAPI(String category, int page) async {
    try {
      //Make Request
      Response response = await dio.get('$_API_URL/quotes',
          queryParameters: {
            'category': category,
            'page': page,
          },
          cancelToken: _cancelToken);

      //Get Request Body
      Map<String, dynamic> data = response.data;

      //Different Color
      int previousColor = 0;

      //Make it in a quote list
      List<QuoteModel> quotes = List<QuoteModel>();
      for (Map<String, dynamic> quote in data['quotes']) {
        int color = getRandomQuoteColor();
        while (color == previousColor) {
          color = getRandomQuoteColor();
        }
        previousColor = color;
        quotes.add(QuoteModel.fromMap(quote, color));
      }
      //return quote List
      return quotes;
    } catch (e) {
      throw ServerException();
    }
  }
}
