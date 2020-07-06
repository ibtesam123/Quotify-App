import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/error/failures.dart';
import '../../domain/model/quote_model.dart';
import '../../domain/repository/quote_repository.dart';

part 'quotes_bloc.freezed.dart';
part 'quotes_event.dart';
part 'quotes_state.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  final QuoteRepository quoteRepository;
  QuotesBloc({@required this.quoteRepository});

  Either<Failure, List<QuoteModel>> quotes = Right(List<QuoteModel>());
  int page = 0;
  String previousCategory = '';
  bool noMoreData = false;

  @override
  QuotesState get initialState => QuotesState.initialState();

  @override
  Stream<QuotesState> mapEventToState(
    QuotesEvent event,
  ) async* {
    yield* event.map(
      getQuotesByCategory: (e) async* {
        yield QuotesState.loading();
        if (previousCategory != e.category) {
          page = 0;
          quotes = Right(List<QuoteModel>());
          noMoreData = false;
        }
        page++;
        final loadedQuotes =
            await quoteRepository.getQuotesByCategory(e.category, page);
        loadedQuotes.fold(
          (l) {
            quotes = Left(l);
          },
          (r) {
            if (r.length == 0) {
              noMoreData = true;
              return;
            }
            final previousQuotes = quotes.getOrElse(() => null);
            if (quotes.isRight()) {
              previousQuotes.addAll(r);
              quotes = Right(previousQuotes);
            } else
              quotes = Right(r);
            previousCategory = e.category;
          },
        );
        yield QuotesState.quotesLoaded(
          quotes,
          quotes.isRight() ? quotes.getOrElse(() => null).length : 0,
        );
      },
      cancelRequest: (e) async* {
        quoteRepository.cancelRequest();
        yield QuotesState.initialState();
      },
    );
  }
}
