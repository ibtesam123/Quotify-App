part of 'saved_quotes_bloc.dart';

@freezed
abstract class SavedQuotesEvent with _$SavedQuotesEvent {
  const factory SavedQuotesEvent.getAllSavedQuotes() = GetAllSavedQuotes;
  const factory SavedQuotesEvent.saveQuoteToCache(QuoteModel quote) =
      SaveQuoteToCache;
  const factory SavedQuotesEvent.removeQuoteFromCache(QuoteModel quote) =
      RemoveQuoteFromCache;
}
