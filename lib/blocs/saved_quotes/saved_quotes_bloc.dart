import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/error/failures.dart';
import '../../domain/model/quote_model.dart';
import '../../domain/repository/quote_repository.dart';

part 'saved_quotes_bloc.freezed.dart';
part 'saved_quotes_event.dart';
part 'saved_quotes_state.dart';

class SavedQuotesBloc extends Bloc<SavedQuotesEvent, SavedQuotesState> {
  final QuoteRepository quoteRepository;
  SavedQuotesBloc({@required this.quoteRepository});

  Either<Failure, List<QuoteModel>> savedQuotes = Right(List<QuoteModel>());

  @override
  SavedQuotesState get initialState => SavedQuotesState.initialState();

  @override
  Stream<SavedQuotesState> mapEventToState(
    SavedQuotesEvent event,
  ) async* {
    yield* event.map(
      getAllSavedQuotes: (e) async* {
        yield SavedQuotesState.loading();
        savedQuotes = await quoteRepository.getSavedQuotes();
        yield savedQuotes.fold(
          (l) => SavedQuotesState.savedLoaded(Left(l), 0),
          (r) => SavedQuotesState.savedLoaded(Right(r), r.length),
        );
      },
      removeQuoteFromCache: (e) async* {
        yield SavedQuotesState.loading();
        final result = await quoteRepository.removeSavedQuote(e.quote);
        savedQuotes = await quoteRepository.getSavedQuotes();
        yield result.fold(
          (l) {
            return SavedQuotesState.savedLoaded(
              savedQuotes,
              savedQuotes.getOrElse(() => List<QuoteModel>()).length,
            );
          },
          (resultRight) {
            return savedQuotes.fold(
              (l) => SavedQuotesState.savedLoaded(Left(l), 0),
              (savedRight) => SavedQuotesState.savedLoaded(
                Right(savedRight),
                savedRight.length,
              ),
            );
          },
        );
      },
      saveQuoteToCache: (e) async* {
        yield SavedQuotesState.loading();
        final result = await quoteRepository.saveQuoteOffline(e.quote);
        savedQuotes = await quoteRepository.getSavedQuotes();
        yield result.fold(
          (l) {
            return SavedQuotesState.savedLoaded(
              savedQuotes,
              savedQuotes.getOrElse(() => List<QuoteModel>()).length,
            );
          },
          (resultRight) {
            return savedQuotes.fold(
              (l) => SavedQuotesState.savedLoaded(Left(l), 0),
              (savedRight) => SavedQuotesState.savedLoaded(
                Right(savedRight),
                savedRight.length,
              ),
            );
          },
        );
      },
    );
  }
}
