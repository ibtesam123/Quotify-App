part of 'quotes_bloc.dart';

@freezed
abstract class QuotesEvent with _$QuotesEvent {
  const factory QuotesEvent.getQuotesByCategory(String category) =
      GetQuotesByCategory;
  const factory QuotesEvent.cancelRequest() = CancelRequest;
}
