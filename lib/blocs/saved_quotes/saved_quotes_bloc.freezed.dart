// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'saved_quotes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SavedQuotesEventTearOff {
  const _$SavedQuotesEventTearOff();

  GetAllSavedQuotes getAllSavedQuotes() {
    return const GetAllSavedQuotes();
  }

  SaveQuoteToCache saveQuoteToCache(QuoteModel quote) {
    return SaveQuoteToCache(
      quote,
    );
  }

  RemoveQuoteFromCache removeQuoteFromCache(QuoteModel quote) {
    return RemoveQuoteFromCache(
      quote,
    );
  }
}

// ignore: unused_element
const $SavedQuotesEvent = _$SavedQuotesEventTearOff();

mixin _$SavedQuotesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllSavedQuotes(),
    @required Result saveQuoteToCache(QuoteModel quote),
    @required Result removeQuoteFromCache(QuoteModel quote),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllSavedQuotes(),
    Result saveQuoteToCache(QuoteModel quote),
    Result removeQuoteFromCache(QuoteModel quote),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllSavedQuotes(GetAllSavedQuotes value),
    @required Result saveQuoteToCache(SaveQuoteToCache value),
    @required Result removeQuoteFromCache(RemoveQuoteFromCache value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllSavedQuotes(GetAllSavedQuotes value),
    Result saveQuoteToCache(SaveQuoteToCache value),
    Result removeQuoteFromCache(RemoveQuoteFromCache value),
    @required Result orElse(),
  });
}

abstract class $SavedQuotesEventCopyWith<$Res> {
  factory $SavedQuotesEventCopyWith(
          SavedQuotesEvent value, $Res Function(SavedQuotesEvent) then) =
      _$SavedQuotesEventCopyWithImpl<$Res>;
}

class _$SavedQuotesEventCopyWithImpl<$Res>
    implements $SavedQuotesEventCopyWith<$Res> {
  _$SavedQuotesEventCopyWithImpl(this._value, this._then);

  final SavedQuotesEvent _value;
  // ignore: unused_field
  final $Res Function(SavedQuotesEvent) _then;
}

abstract class $GetAllSavedQuotesCopyWith<$Res> {
  factory $GetAllSavedQuotesCopyWith(
          GetAllSavedQuotes value, $Res Function(GetAllSavedQuotes) then) =
      _$GetAllSavedQuotesCopyWithImpl<$Res>;
}

class _$GetAllSavedQuotesCopyWithImpl<$Res>
    extends _$SavedQuotesEventCopyWithImpl<$Res>
    implements $GetAllSavedQuotesCopyWith<$Res> {
  _$GetAllSavedQuotesCopyWithImpl(
      GetAllSavedQuotes _value, $Res Function(GetAllSavedQuotes) _then)
      : super(_value, (v) => _then(v as GetAllSavedQuotes));

  @override
  GetAllSavedQuotes get _value => super._value as GetAllSavedQuotes;
}

class _$GetAllSavedQuotes implements GetAllSavedQuotes {
  const _$GetAllSavedQuotes();

  @override
  String toString() {
    return 'SavedQuotesEvent.getAllSavedQuotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllSavedQuotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllSavedQuotes(),
    @required Result saveQuoteToCache(QuoteModel quote),
    @required Result removeQuoteFromCache(QuoteModel quote),
  }) {
    assert(getAllSavedQuotes != null);
    assert(saveQuoteToCache != null);
    assert(removeQuoteFromCache != null);
    return getAllSavedQuotes();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllSavedQuotes(),
    Result saveQuoteToCache(QuoteModel quote),
    Result removeQuoteFromCache(QuoteModel quote),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllSavedQuotes != null) {
      return getAllSavedQuotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllSavedQuotes(GetAllSavedQuotes value),
    @required Result saveQuoteToCache(SaveQuoteToCache value),
    @required Result removeQuoteFromCache(RemoveQuoteFromCache value),
  }) {
    assert(getAllSavedQuotes != null);
    assert(saveQuoteToCache != null);
    assert(removeQuoteFromCache != null);
    return getAllSavedQuotes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllSavedQuotes(GetAllSavedQuotes value),
    Result saveQuoteToCache(SaveQuoteToCache value),
    Result removeQuoteFromCache(RemoveQuoteFromCache value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllSavedQuotes != null) {
      return getAllSavedQuotes(this);
    }
    return orElse();
  }
}

abstract class GetAllSavedQuotes implements SavedQuotesEvent {
  const factory GetAllSavedQuotes() = _$GetAllSavedQuotes;
}

abstract class $SaveQuoteToCacheCopyWith<$Res> {
  factory $SaveQuoteToCacheCopyWith(
          SaveQuoteToCache value, $Res Function(SaveQuoteToCache) then) =
      _$SaveQuoteToCacheCopyWithImpl<$Res>;
  $Res call({QuoteModel quote});
}

class _$SaveQuoteToCacheCopyWithImpl<$Res>
    extends _$SavedQuotesEventCopyWithImpl<$Res>
    implements $SaveQuoteToCacheCopyWith<$Res> {
  _$SaveQuoteToCacheCopyWithImpl(
      SaveQuoteToCache _value, $Res Function(SaveQuoteToCache) _then)
      : super(_value, (v) => _then(v as SaveQuoteToCache));

  @override
  SaveQuoteToCache get _value => super._value as SaveQuoteToCache;

  @override
  $Res call({
    Object quote = freezed,
  }) {
    return _then(SaveQuoteToCache(
      quote == freezed ? _value.quote : quote as QuoteModel,
    ));
  }
}

class _$SaveQuoteToCache implements SaveQuoteToCache {
  const _$SaveQuoteToCache(this.quote) : assert(quote != null);

  @override
  final QuoteModel quote;

  @override
  String toString() {
    return 'SavedQuotesEvent.saveQuoteToCache(quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveQuoteToCache &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @override
  $SaveQuoteToCacheCopyWith<SaveQuoteToCache> get copyWith =>
      _$SaveQuoteToCacheCopyWithImpl<SaveQuoteToCache>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllSavedQuotes(),
    @required Result saveQuoteToCache(QuoteModel quote),
    @required Result removeQuoteFromCache(QuoteModel quote),
  }) {
    assert(getAllSavedQuotes != null);
    assert(saveQuoteToCache != null);
    assert(removeQuoteFromCache != null);
    return saveQuoteToCache(quote);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllSavedQuotes(),
    Result saveQuoteToCache(QuoteModel quote),
    Result removeQuoteFromCache(QuoteModel quote),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveQuoteToCache != null) {
      return saveQuoteToCache(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllSavedQuotes(GetAllSavedQuotes value),
    @required Result saveQuoteToCache(SaveQuoteToCache value),
    @required Result removeQuoteFromCache(RemoveQuoteFromCache value),
  }) {
    assert(getAllSavedQuotes != null);
    assert(saveQuoteToCache != null);
    assert(removeQuoteFromCache != null);
    return saveQuoteToCache(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllSavedQuotes(GetAllSavedQuotes value),
    Result saveQuoteToCache(SaveQuoteToCache value),
    Result removeQuoteFromCache(RemoveQuoteFromCache value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveQuoteToCache != null) {
      return saveQuoteToCache(this);
    }
    return orElse();
  }
}

abstract class SaveQuoteToCache implements SavedQuotesEvent {
  const factory SaveQuoteToCache(QuoteModel quote) = _$SaveQuoteToCache;

  QuoteModel get quote;
  $SaveQuoteToCacheCopyWith<SaveQuoteToCache> get copyWith;
}

abstract class $RemoveQuoteFromCacheCopyWith<$Res> {
  factory $RemoveQuoteFromCacheCopyWith(RemoveQuoteFromCache value,
          $Res Function(RemoveQuoteFromCache) then) =
      _$RemoveQuoteFromCacheCopyWithImpl<$Res>;
  $Res call({QuoteModel quote});
}

class _$RemoveQuoteFromCacheCopyWithImpl<$Res>
    extends _$SavedQuotesEventCopyWithImpl<$Res>
    implements $RemoveQuoteFromCacheCopyWith<$Res> {
  _$RemoveQuoteFromCacheCopyWithImpl(
      RemoveQuoteFromCache _value, $Res Function(RemoveQuoteFromCache) _then)
      : super(_value, (v) => _then(v as RemoveQuoteFromCache));

  @override
  RemoveQuoteFromCache get _value => super._value as RemoveQuoteFromCache;

  @override
  $Res call({
    Object quote = freezed,
  }) {
    return _then(RemoveQuoteFromCache(
      quote == freezed ? _value.quote : quote as QuoteModel,
    ));
  }
}

class _$RemoveQuoteFromCache implements RemoveQuoteFromCache {
  const _$RemoveQuoteFromCache(this.quote) : assert(quote != null);

  @override
  final QuoteModel quote;

  @override
  String toString() {
    return 'SavedQuotesEvent.removeQuoteFromCache(quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveQuoteFromCache &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @override
  $RemoveQuoteFromCacheCopyWith<RemoveQuoteFromCache> get copyWith =>
      _$RemoveQuoteFromCacheCopyWithImpl<RemoveQuoteFromCache>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllSavedQuotes(),
    @required Result saveQuoteToCache(QuoteModel quote),
    @required Result removeQuoteFromCache(QuoteModel quote),
  }) {
    assert(getAllSavedQuotes != null);
    assert(saveQuoteToCache != null);
    assert(removeQuoteFromCache != null);
    return removeQuoteFromCache(quote);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllSavedQuotes(),
    Result saveQuoteToCache(QuoteModel quote),
    Result removeQuoteFromCache(QuoteModel quote),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeQuoteFromCache != null) {
      return removeQuoteFromCache(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllSavedQuotes(GetAllSavedQuotes value),
    @required Result saveQuoteToCache(SaveQuoteToCache value),
    @required Result removeQuoteFromCache(RemoveQuoteFromCache value),
  }) {
    assert(getAllSavedQuotes != null);
    assert(saveQuoteToCache != null);
    assert(removeQuoteFromCache != null);
    return removeQuoteFromCache(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllSavedQuotes(GetAllSavedQuotes value),
    Result saveQuoteToCache(SaveQuoteToCache value),
    Result removeQuoteFromCache(RemoveQuoteFromCache value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeQuoteFromCache != null) {
      return removeQuoteFromCache(this);
    }
    return orElse();
  }
}

abstract class RemoveQuoteFromCache implements SavedQuotesEvent {
  const factory RemoveQuoteFromCache(QuoteModel quote) = _$RemoveQuoteFromCache;

  QuoteModel get quote;
  $RemoveQuoteFromCacheCopyWith<RemoveQuoteFromCache> get copyWith;
}

class _$SavedQuotesStateTearOff {
  const _$SavedQuotesStateTearOff();

  SavedQuotesInitialState initialState() {
    return const SavedQuotesInitialState();
  }

  SavedQuotesLoaded savedLoaded(
      Either<Failure, List<QuoteModel>> savedQuotes, int length) {
    return SavedQuotesLoaded(
      savedQuotes,
      length,
    );
  }

  SavedQuotesLoading loading() {
    return const SavedQuotesLoading();
  }
}

// ignore: unused_element
const $SavedQuotesState = _$SavedQuotesStateTearOff();

mixin _$SavedQuotesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result savedLoaded(
            Either<Failure, List<QuoteModel>> savedQuotes, int length),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result savedLoaded(
        Either<Failure, List<QuoteModel>> savedQuotes, int length),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(SavedQuotesInitialState value),
    @required Result savedLoaded(SavedQuotesLoaded value),
    @required Result loading(SavedQuotesLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(SavedQuotesInitialState value),
    Result savedLoaded(SavedQuotesLoaded value),
    Result loading(SavedQuotesLoading value),
    @required Result orElse(),
  });
}

abstract class $SavedQuotesStateCopyWith<$Res> {
  factory $SavedQuotesStateCopyWith(
          SavedQuotesState value, $Res Function(SavedQuotesState) then) =
      _$SavedQuotesStateCopyWithImpl<$Res>;
}

class _$SavedQuotesStateCopyWithImpl<$Res>
    implements $SavedQuotesStateCopyWith<$Res> {
  _$SavedQuotesStateCopyWithImpl(this._value, this._then);

  final SavedQuotesState _value;
  // ignore: unused_field
  final $Res Function(SavedQuotesState) _then;
}

abstract class $SavedQuotesInitialStateCopyWith<$Res> {
  factory $SavedQuotesInitialStateCopyWith(SavedQuotesInitialState value,
          $Res Function(SavedQuotesInitialState) then) =
      _$SavedQuotesInitialStateCopyWithImpl<$Res>;
}

class _$SavedQuotesInitialStateCopyWithImpl<$Res>
    extends _$SavedQuotesStateCopyWithImpl<$Res>
    implements $SavedQuotesInitialStateCopyWith<$Res> {
  _$SavedQuotesInitialStateCopyWithImpl(SavedQuotesInitialState _value,
      $Res Function(SavedQuotesInitialState) _then)
      : super(_value, (v) => _then(v as SavedQuotesInitialState));

  @override
  SavedQuotesInitialState get _value => super._value as SavedQuotesInitialState;
}

class _$SavedQuotesInitialState implements SavedQuotesInitialState {
  const _$SavedQuotesInitialState();

  @override
  String toString() {
    return 'SavedQuotesState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SavedQuotesInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result savedLoaded(
            Either<Failure, List<QuoteModel>> savedQuotes, int length),
    @required Result loading(),
  }) {
    assert(initialState != null);
    assert(savedLoaded != null);
    assert(loading != null);
    return initialState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result savedLoaded(
        Either<Failure, List<QuoteModel>> savedQuotes, int length),
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
    @required Result initialState(SavedQuotesInitialState value),
    @required Result savedLoaded(SavedQuotesLoaded value),
    @required Result loading(SavedQuotesLoading value),
  }) {
    assert(initialState != null);
    assert(savedLoaded != null);
    assert(loading != null);
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(SavedQuotesInitialState value),
    Result savedLoaded(SavedQuotesLoaded value),
    Result loading(SavedQuotesLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class SavedQuotesInitialState implements SavedQuotesState {
  const factory SavedQuotesInitialState() = _$SavedQuotesInitialState;
}

abstract class $SavedQuotesLoadedCopyWith<$Res> {
  factory $SavedQuotesLoadedCopyWith(
          SavedQuotesLoaded value, $Res Function(SavedQuotesLoaded) then) =
      _$SavedQuotesLoadedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<QuoteModel>> savedQuotes, int length});
}

class _$SavedQuotesLoadedCopyWithImpl<$Res>
    extends _$SavedQuotesStateCopyWithImpl<$Res>
    implements $SavedQuotesLoadedCopyWith<$Res> {
  _$SavedQuotesLoadedCopyWithImpl(
      SavedQuotesLoaded _value, $Res Function(SavedQuotesLoaded) _then)
      : super(_value, (v) => _then(v as SavedQuotesLoaded));

  @override
  SavedQuotesLoaded get _value => super._value as SavedQuotesLoaded;

  @override
  $Res call({
    Object savedQuotes = freezed,
    Object length = freezed,
  }) {
    return _then(SavedQuotesLoaded(
      savedQuotes == freezed
          ? _value.savedQuotes
          : savedQuotes as Either<Failure, List<QuoteModel>>,
      length == freezed ? _value.length : length as int,
    ));
  }
}

class _$SavedQuotesLoaded implements SavedQuotesLoaded {
  const _$SavedQuotesLoaded(this.savedQuotes, this.length)
      : assert(savedQuotes != null),
        assert(length != null);

  @override
  final Either<Failure, List<QuoteModel>> savedQuotes;
  @override
  final int length;

  @override
  String toString() {
    return 'SavedQuotesState.savedLoaded(savedQuotes: $savedQuotes, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavedQuotesLoaded &&
            (identical(other.savedQuotes, savedQuotes) ||
                const DeepCollectionEquality()
                    .equals(other.savedQuotes, savedQuotes)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(savedQuotes) ^
      const DeepCollectionEquality().hash(length);

  @override
  $SavedQuotesLoadedCopyWith<SavedQuotesLoaded> get copyWith =>
      _$SavedQuotesLoadedCopyWithImpl<SavedQuotesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result savedLoaded(
            Either<Failure, List<QuoteModel>> savedQuotes, int length),
    @required Result loading(),
  }) {
    assert(initialState != null);
    assert(savedLoaded != null);
    assert(loading != null);
    return savedLoaded(savedQuotes, length);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result savedLoaded(
        Either<Failure, List<QuoteModel>> savedQuotes, int length),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savedLoaded != null) {
      return savedLoaded(savedQuotes, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(SavedQuotesInitialState value),
    @required Result savedLoaded(SavedQuotesLoaded value),
    @required Result loading(SavedQuotesLoading value),
  }) {
    assert(initialState != null);
    assert(savedLoaded != null);
    assert(loading != null);
    return savedLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(SavedQuotesInitialState value),
    Result savedLoaded(SavedQuotesLoaded value),
    Result loading(SavedQuotesLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savedLoaded != null) {
      return savedLoaded(this);
    }
    return orElse();
  }
}

abstract class SavedQuotesLoaded implements SavedQuotesState {
  const factory SavedQuotesLoaded(
          Either<Failure, List<QuoteModel>> savedQuotes, int length) =
      _$SavedQuotesLoaded;

  Either<Failure, List<QuoteModel>> get savedQuotes;
  int get length;
  $SavedQuotesLoadedCopyWith<SavedQuotesLoaded> get copyWith;
}

abstract class $SavedQuotesLoadingCopyWith<$Res> {
  factory $SavedQuotesLoadingCopyWith(
          SavedQuotesLoading value, $Res Function(SavedQuotesLoading) then) =
      _$SavedQuotesLoadingCopyWithImpl<$Res>;
}

class _$SavedQuotesLoadingCopyWithImpl<$Res>
    extends _$SavedQuotesStateCopyWithImpl<$Res>
    implements $SavedQuotesLoadingCopyWith<$Res> {
  _$SavedQuotesLoadingCopyWithImpl(
      SavedQuotesLoading _value, $Res Function(SavedQuotesLoading) _then)
      : super(_value, (v) => _then(v as SavedQuotesLoading));

  @override
  SavedQuotesLoading get _value => super._value as SavedQuotesLoading;
}

class _$SavedQuotesLoading implements SavedQuotesLoading {
  const _$SavedQuotesLoading();

  @override
  String toString() {
    return 'SavedQuotesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SavedQuotesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required
        Result savedLoaded(
            Either<Failure, List<QuoteModel>> savedQuotes, int length),
    @required Result loading(),
  }) {
    assert(initialState != null);
    assert(savedLoaded != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result savedLoaded(
        Either<Failure, List<QuoteModel>> savedQuotes, int length),
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
    @required Result initialState(SavedQuotesInitialState value),
    @required Result savedLoaded(SavedQuotesLoaded value),
    @required Result loading(SavedQuotesLoading value),
  }) {
    assert(initialState != null);
    assert(savedLoaded != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(SavedQuotesInitialState value),
    Result savedLoaded(SavedQuotesLoaded value),
    Result loading(SavedQuotesLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SavedQuotesLoading implements SavedQuotesState {
  const factory SavedQuotesLoading() = _$SavedQuotesLoading;
}
