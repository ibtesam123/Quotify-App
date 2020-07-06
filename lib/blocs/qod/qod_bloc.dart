import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import '../../domain/model/quote_model.dart';

import '../../core/error/failures.dart';
import '../../domain/repository/quote_repository.dart';

part 'qod_bloc.freezed.dart';
part 'qod_event.dart';
part 'qod_state.dart';

class QodBloc extends Bloc<QodEvent, QodState> {
  final QuoteRepository quoteRepository;

  QodBloc({@required this.quoteRepository});

  @override
  QodState get initialState => QodState.initialState();

  @override
  Stream<QodState> mapEventToState(
    QodEvent event,
  ) async* {
    yield* event.map(
      getQOD: (e) async* {
        yield QODLoadingState();
        final quoteOfDay = await quoteRepository.getQuoteOfTheDay();
        yield QODLoaded(quoteOfDay);
      },
      cancelRequest: (e) async* {
        quoteRepository.cancelRequest();
        yield QODInitialState();
      },
    );
  }
}
