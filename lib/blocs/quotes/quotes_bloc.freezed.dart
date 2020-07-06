// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'quotes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuotesEventTearOff {
  const _$QuotesEventTearOff();

  GetQuotesByCategory getQuotesByCategory(String category) {
    return GetQuotesByCategory(
      category,
    );
  }

  CancelRequest cancelRequest() {
    return const CancelRequest();
  }
}

// ignore: unused_element
const $QuotesEvent = _$QuotesEventTearOff();

mixin _$QuotesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQuotesByCategory(String category),
    @required Result cancelRequest(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQuotesByCategory(String category),
    Result cancelRequest(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQuotesByCategory(GetQuotesByCategory value),
    @required Result cancelRequest(CancelRequest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQuotesByCategory(GetQuotesByCategory value),
    Result cancelRequest(CancelRequest value),
    @required Result orElse(),
  });
}

abstract class $QuotesEventCopyWith<$Res> {
  factory $QuotesEventCopyWith(
          QuotesEvent value, $Res Function(QuotesEvent) then) =
      _$QuotesEventCopyWithImpl<$Res>;
}

class _$QuotesEventCopyWithImpl<$Res> implements $QuotesEventCopyWith<$Res> {
  _$QuotesEventCopyWithImpl(this._value, this._then);

  final QuotesEvent _value;
  // ignore: unused_field
  final $Res Function(QuotesEvent) _then;
}

abstract class $GetQuotesByCategoryCopyWith<$Res> {
  factory $GetQuotesByCategoryCopyWith(
          GetQuotesByCategory value, $Res Function(GetQuotesByCategory) then) =
      _$GetQuotesByCategoryCopyWithImpl<$Res>;
  $Res call({String category});
}

class _$GetQuotesByCategoryCopyWithImpl<$Res>
    extends _$QuotesEventCopyWithImpl<$Res>
    implements $GetQuotesByCategoryCopyWith<$Res> {
  _$GetQuotesByCategoryCopyWithImpl(
      GetQuotesByCategory _value, $Res Function(GetQuotesByCategory) _then)
      : super(_value, (v) => _then(v as GetQuotesByCategory));

  @override
  GetQuotesByCategory get _value => super._value as GetQuotesByCategory;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(GetQuotesByCategory(
      category == freezed ? _value.category : category as String,
    ));
  }
}

class _$GetQuotesByCategory implements GetQuotesByCategory {
  const _$GetQuotesByCategory(this.category) : assert(category != null);

  @override
  final String category;

  @override
  String toString() {
    return 'QuotesEvent.getQuotesByCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetQuotesByCategory &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  $GetQuotesByCategoryCopyWith<GetQuotesByCategory> get copyWith =>
      _$GetQuotesByCategoryCopyWithImpl<GetQuotesByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQuotesByCategory(String category),
    @required Result cancelRequest(),
  }) {
    assert(getQuotesByCategory != null);
    assert(cancelRequest != null);
    return getQuotesByCategory(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQuotesByCategory(String category),
    Result cancelRequest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getQuotesByCategory != null) {
      return getQuotesByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQuotesByCategory(GetQuotesByCategory value),
    @required Result cancelRequest(CancelRequest value),
  }) {
    assert(getQuotesByCategory != null);
    assert(cancelRequest != null);
    return getQuotesByCategory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQuotesByCategory(GetQuotesByCategory value),
    Result cancelRequest(CancelRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getQuotesByCategory != null) {
      return getQuotesByCategory(this);
    }
    return orElse();
  }
}

abstract class GetQuotesByCategory implements QuotesEvent {
  const factory GetQuotesByCategory(String category) = _$GetQuotesByCategory;

  String get category;
  $GetQuotesByCategoryCopyWith<GetQuotesByCategory> get copyWith;
}

abstract class $CancelRequestCopyWith<$Res> {
  factory $CancelRequestCopyWith(
          CancelRequest value, $Res Function(CancelRequest) then) =
      _$CancelRequestCopyWithImpl<$Res>;
}

class _$CancelRequestCopyWithImpl<$Res> extends _$QuotesEventCopyWithImpl<$Res>
    implements $CancelRequestCopyWith<$Res> {
  _$CancelRequestCopyWithImpl(
      CancelRequest _value, $Res Function(CancelRequest) _then)
      : super(_value, (v) => _then(v as CancelRequest));

  @override
  CancelRequest get _value => super._value as CancelRequest;
}

class _$CancelRequest implements CancelRequest {
  const _$CancelRequest();

  @override
  String toString() {
    return 'QuotesEvent.cancelRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQuotesByCategory(String category),
    @required Result cancelRequest(),
  }) {
    assert(getQuotesByCategory != null);
    assert(cancelRequest != null);
    return cancelRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQuotesByCategory(String category),
    Result cancelRequest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelRequest != null) {
      return cancelRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQuotesByCategory(GetQuotesByCategory value),
    @required Result cancelRequest(CancelRequest value),
  }) {
    assert(getQuotesByCategory != null);
    assert(cancelRequest != null);
    return cancelRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQuotesByCategory(GetQuotesByCategory value),
    Result cancelRequest(CancelRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelRequest != null) {
      return cancelRequest(this);
    }
    return orElse();
  }
}

abstract class CancelRequest implements QuotesEvent {
  const factory CancelRequest() = _$CancelRequest;
}

class _$QuotesStateTearOff {
  const _$QuotesStateTearOff();

  QuotesStateInitial initialState() {
    return const QuotesStateInitial();
  }

  QuotesStateLoaded quotesLoaded(
      Either<Failure, List<QuoteModel>> quotes, int length) {
    return QuotesStateLoaded(
      quotes,
      length,
    );
  }

  QuotesStateLoading loading() {
    return const QuotesStateLoading();
  }
}

// ignore: unused_element
const $QuotesState = _$QuotesStateTearOff();

mixin _$QuotesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result quotesLoaded(
            Either<Failure, List<QuoteModel>> quotes, int length),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result quotesLoaded(Either<Failure, List<QuoteModel>> quotes, int length),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(QuotesStateInitial value),
    @required Result quotesLoaded(QuotesStateLoaded value),
    @required Result loading(QuotesStateLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QuotesStateInitial value),
    Result quotesLoaded(QuotesStateLoaded value),
    Result loading(QuotesStateLoading value),
    @required Result orElse(),
  });
}

abstract class $QuotesStateCopyWith<$Res> {
  factory $QuotesStateCopyWith(
          QuotesState value, $Res Function(QuotesState) then) =
      _$QuotesStateCopyWithImpl<$Res>;
}

class _$QuotesStateCopyWithImpl<$Res> implements $QuotesStateCopyWith<$Res> {
  _$QuotesStateCopyWithImpl(this._value, this._then);

  final QuotesState _value;
  // ignore: unused_field
  final $Res Function(QuotesState) _then;
}

abstract class $QuotesStateInitialCopyWith<$Res> {
  factory $QuotesStateInitialCopyWith(
          QuotesStateInitial value, $Res Function(QuotesStateInitial) then) =
      _$QuotesStateInitialCopyWithImpl<$Res>;
}

class _$QuotesStateInitialCopyWithImpl<$Res>
    extends _$QuotesStateCopyWithImpl<$Res>
    implements $QuotesStateInitialCopyWith<$Res> {
  _$QuotesStateInitialCopyWithImpl(
      QuotesStateInitial _value, $Res Function(QuotesStateInitial) _then)
      : super(_value, (v) => _then(v as QuotesStateInitial));

  @override
  QuotesStateInitial get _value => super._value as QuotesStateInitial;
}

class _$QuotesStateInitial implements QuotesStateInitial {
  const _$QuotesStateInitial();

  @override
  String toString() {
    return 'QuotesState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QuotesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result quotesLoaded(
            Either<Failure, List<QuoteModel>> quotes, int length),
    @required Result loading(),
  }) {
    assert(initialState != null);
    assert(quotesLoaded != null);
    assert(loading != null);
    return initialState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result quotesLoaded(Either<Failure, List<QuoteModel>> quotes, int length),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(QuotesStateInitial value),
    @required Result quotesLoaded(QuotesStateLoaded value),
    @required Result loading(QuotesStateLoading value),
  }) {
    assert(initialState != null);
    assert(quotesLoaded != null);
    assert(loading != null);
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QuotesStateInitial value),
    Result quotesLoaded(QuotesStateLoaded value),
    Result loading(QuotesStateLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class QuotesStateInitial implements QuotesState {
  const factory QuotesStateInitial() = _$QuotesStateInitial;
}

abstract class $QuotesStateLoadedCopyWith<$Res> {
  factory $QuotesStateLoadedCopyWith(
          QuotesStateLoaded value, $Res Function(QuotesStateLoaded) then) =
      _$QuotesStateLoadedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<QuoteModel>> quotes, int length});
}

class _$QuotesStateLoadedCopyWithImpl<$Res>
    extends _$QuotesStateCopyWithImpl<$Res>
    implements $QuotesStateLoadedCopyWith<$Res> {
  _$QuotesStateLoadedCopyWithImpl(
      QuotesStateLoaded _value, $Res Function(QuotesStateLoaded) _then)
      : super(_value, (v) => _then(v as QuotesStateLoaded));

  @override
  QuotesStateLoaded get _value => super._value as QuotesStateLoaded;

  @override
  $Res call({
    Object quotes = freezed,
    Object length = freezed,
  }) {
    return _then(QuotesStateLoaded(
      quotes == freezed
          ? _value.quotes
          : quotes as Either<Failure, List<QuoteModel>>,
      length == freezed ? _value.length : length as int,
    ));
  }
}

class _$QuotesStateLoaded implements QuotesStateLoaded {
  const _$QuotesStateLoaded(this.quotes, this.length)
      : assert(quotes != null),
        assert(length != null);

  @override
  final Either<Failure, List<QuoteModel>> quotes;
  @override
  final int length;

  @override
  String toString() {
    return 'QuotesState.quotesLoaded(quotes: $quotes, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuotesStateLoaded &&
            (identical(other.quotes, quotes) ||
                const DeepCollectionEquality().equals(other.quotes, quotes)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quotes) ^
      const DeepCollectionEquality().hash(length);

  @override
  $QuotesStateLoadedCopyWith<QuotesStateLoaded> get copyWith =>
      _$QuotesStateLoadedCopyWithImpl<QuotesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result quotesLoaded(
            Either<Failure, List<QuoteModel>> quotes, int length),
    @required Result loading(),
  }) {
    assert(initialState != null);
    assert(quotesLoaded != null);
    assert(loading != null);
    return quotesLoaded(quotes, length);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result quotesLoaded(Either<Failure, List<QuoteModel>> quotes, int length),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quotesLoaded != null) {
      return quotesLoaded(quotes, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(QuotesStateInitial value),
    @required Result quotesLoaded(QuotesStateLoaded value),
    @required Result loading(QuotesStateLoading value),
  }) {
    assert(initialState != null);
    assert(quotesLoaded != null);
    assert(loading != null);
    return quotesLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QuotesStateInitial value),
    Result quotesLoaded(QuotesStateLoaded value),
    Result loading(QuotesStateLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quotesLoaded != null) {
      return quotesLoaded(this);
    }
    return orElse();
  }
}

abstract class QuotesStateLoaded implements QuotesState {
  const factory QuotesStateLoaded(
          Either<Failure, List<QuoteModel>> quotes, int length) =
      _$QuotesStateLoaded;

  Either<Failure, List<QuoteModel>> get quotes;
  int get length;
  $QuotesStateLoadedCopyWith<QuotesStateLoaded> get copyWith;
}

abstract class $QuotesStateLoadingCopyWith<$Res> {
  factory $QuotesStateLoadingCopyWith(
          QuotesStateLoading value, $Res Function(QuotesStateLoading) then) =
      _$QuotesStateLoadingCopyWithImpl<$Res>;
}

class _$QuotesStateLoadingCopyWithImpl<$Res>
    extends _$QuotesStateCopyWithImpl<$Res>
    implements $QuotesStateLoadingCopyWith<$Res> {
  _$QuotesStateLoadingCopyWithImpl(
      QuotesStateLoading _value, $Res Function(QuotesStateLoading) _then)
      : super(_value, (v) => _then(v as QuotesStateLoading));

  @override
  QuotesStateLoading get _value => super._value as QuotesStateLoading;
}

class _$QuotesStateLoading implements QuotesStateLoading {
  const _$QuotesStateLoading();

  @override
  String toString() {
    return 'QuotesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QuotesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result quotesLoaded(
            Either<Failure, List<QuoteModel>> quotes, int length),
    @required Result loading(),
  }) {
    assert(initialState != null);
    assert(quotesLoaded != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result quotesLoaded(Either<Failure, List<QuoteModel>> quotes, int length),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(QuotesStateInitial value),
    @required Result quotesLoaded(QuotesStateLoaded value),
    @required Result loading(QuotesStateLoading value),
  }) {
    assert(initialState != null);
    assert(quotesLoaded != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QuotesStateInitial value),
    Result quotesLoaded(QuotesStateLoaded value),
    Result loading(QuotesStateLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuotesStateLoading implements QuotesState {
  const factory QuotesStateLoading() = _$QuotesStateLoading;
}
