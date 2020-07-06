part of 'saved_quotes_bloc.dart';

@freezed
abstract class SavedQuotesState with _$SavedQuotesState {
  const factory SavedQuotesState.initialState() = SavedQuotesInitialState;
  const factory SavedQuotesState.savedLoaded(
          Either<Failure, List<QuoteModel>> savedQuotes, int length) =
      SavedQuotesLoaded;
  const factory SavedQuotesState.loading() = SavedQuotesLoading;
}
