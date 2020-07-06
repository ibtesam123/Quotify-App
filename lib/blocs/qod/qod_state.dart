part of 'qod_bloc.dart';

@freezed
abstract class QodState with _$QodState {
  const factory QodState.initialState() = QODInitialState;
  const factory QodState.qodLoading() = QODLoadingState;
  const factory QodState.qodLoaded(Either<Failure, QuoteModel> quoteOfDay) =
      QODLoaded;
}
