part of 'quotes_bloc.dart';

@freezed
abstract class QuotesState with _$QuotesState {
  const factory QuotesState.initialState() = QuotesStateInitial;
  const factory QuotesState.quotesLoaded(
      Either<Failure, List<QuoteModel>> quotes, int length) = QuotesStateLoaded;
  const factory QuotesState.loading() = QuotesStateLoading;
}
