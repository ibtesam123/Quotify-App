// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'qod_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QodEventTearOff {
  const _$QodEventTearOff();

  GetQOD getQOD() {
    return const GetQOD();
  }

  CancelRequest cancelRequest() {
    return const CancelRequest();
  }
}

// ignore: unused_element
const $QodEvent = _$QodEventTearOff();

mixin _$QodEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQOD(),
    @required Result cancelRequest(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQOD(),
    Result cancelRequest(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQOD(GetQOD value),
    @required Result cancelRequest(CancelRequest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQOD(GetQOD value),
    Result cancelRequest(CancelRequest value),
    @required Result orElse(),
  });
}

abstract class $QodEventCopyWith<$Res> {
  factory $QodEventCopyWith(QodEvent value, $Res Function(QodEvent) then) =
      _$QodEventCopyWithImpl<$Res>;
}

class _$QodEventCopyWithImpl<$Res> implements $QodEventCopyWith<$Res> {
  _$QodEventCopyWithImpl(this._value, this._then);

  final QodEvent _value;
  // ignore: unused_field
  final $Res Function(QodEvent) _then;
}

abstract class $GetQODCopyWith<$Res> {
  factory $GetQODCopyWith(GetQOD value, $Res Function(GetQOD) then) =
      _$GetQODCopyWithImpl<$Res>;
}

class _$GetQODCopyWithImpl<$Res> extends _$QodEventCopyWithImpl<$Res>
    implements $GetQODCopyWith<$Res> {
  _$GetQODCopyWithImpl(GetQOD _value, $Res Function(GetQOD) _then)
      : super(_value, (v) => _then(v as GetQOD));

  @override
  GetQOD get _value => super._value as GetQOD;
}

class _$GetQOD implements GetQOD {
  const _$GetQOD();

  @override
  String toString() {
    return 'QodEvent.getQOD()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetQOD);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQOD(),
    @required Result cancelRequest(),
  }) {
    assert(getQOD != null);
    assert(cancelRequest != null);
    return getQOD();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQOD(),
    Result cancelRequest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getQOD != null) {
      return getQOD();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQOD(GetQOD value),
    @required Result cancelRequest(CancelRequest value),
  }) {
    assert(getQOD != null);
    assert(cancelRequest != null);
    return getQOD(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQOD(GetQOD value),
    Result cancelRequest(CancelRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getQOD != null) {
      return getQOD(this);
    }
    return orElse();
  }
}

abstract class GetQOD implements QodEvent {
  const factory GetQOD() = _$GetQOD;
}

abstract class $CancelRequestCopyWith<$Res> {
  factory $CancelRequestCopyWith(
          CancelRequest value, $Res Function(CancelRequest) then) =
      _$CancelRequestCopyWithImpl<$Res>;
}

class _$CancelRequestCopyWithImpl<$Res> extends _$QodEventCopyWithImpl<$Res>
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
    return 'QodEvent.cancelRequest()';
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
    @required Result getQOD(),
    @required Result cancelRequest(),
  }) {
    assert(getQOD != null);
    assert(cancelRequest != null);
    return cancelRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQOD(),
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
    @required Result getQOD(GetQOD value),
    @required Result cancelRequest(CancelRequest value),
  }) {
    assert(getQOD != null);
    assert(cancelRequest != null);
    return cancelRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQOD(GetQOD value),
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

abstract class CancelRequest implements QodEvent {
  const factory CancelRequest() = _$CancelRequest;
}

class _$QodStateTearOff {
  const _$QodStateTearOff();

  QODInitialState initialState() {
    return const QODInitialState();
  }

  QODLoadingState qodLoading() {
    return const QODLoadingState();
  }

  QODLoaded qodLoaded(Either<Failure, QuoteModel> quoteOfDay) {
    return QODLoaded(
      quoteOfDay,
    );
  }
}

// ignore: unused_element
const $QodState = _$QodStateTearOff();

mixin _$QodState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required Result qodLoading(),
    @required Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result qodLoading(),
    Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(QODInitialState value),
    @required Result qodLoading(QODLoadingState value),
    @required Result qodLoaded(QODLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QODInitialState value),
    Result qodLoading(QODLoadingState value),
    Result qodLoaded(QODLoaded value),
    @required Result orElse(),
  });
}

abstract class $QodStateCopyWith<$Res> {
  factory $QodStateCopyWith(QodState value, $Res Function(QodState) then) =
      _$QodStateCopyWithImpl<$Res>;
}

class _$QodStateCopyWithImpl<$Res> implements $QodStateCopyWith<$Res> {
  _$QodStateCopyWithImpl(this._value, this._then);

  final QodState _value;
  // ignore: unused_field
  final $Res Function(QodState) _then;
}

abstract class $QODInitialStateCopyWith<$Res> {
  factory $QODInitialStateCopyWith(
          QODInitialState value, $Res Function(QODInitialState) then) =
      _$QODInitialStateCopyWithImpl<$Res>;
}

class _$QODInitialStateCopyWithImpl<$Res> extends _$QodStateCopyWithImpl<$Res>
    implements $QODInitialStateCopyWith<$Res> {
  _$QODInitialStateCopyWithImpl(
      QODInitialState _value, $Res Function(QODInitialState) _then)
      : super(_value, (v) => _then(v as QODInitialState));

  @override
  QODInitialState get _value => super._value as QODInitialState;
}

class _$QODInitialState implements QODInitialState {
  const _$QODInitialState();

  @override
  String toString() {
    return 'QodState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QODInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required Result qodLoading(),
    @required Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
  }) {
    assert(initialState != null);
    assert(qodLoading != null);
    assert(qodLoaded != null);
    return initialState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result qodLoading(),
    Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
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
    @required Result initialState(QODInitialState value),
    @required Result qodLoading(QODLoadingState value),
    @required Result qodLoaded(QODLoaded value),
  }) {
    assert(initialState != null);
    assert(qodLoading != null);
    assert(qodLoaded != null);
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QODInitialState value),
    Result qodLoading(QODLoadingState value),
    Result qodLoaded(QODLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class QODInitialState implements QodState {
  const factory QODInitialState() = _$QODInitialState;
}

abstract class $QODLoadingStateCopyWith<$Res> {
  factory $QODLoadingStateCopyWith(
          QODLoadingState value, $Res Function(QODLoadingState) then) =
      _$QODLoadingStateCopyWithImpl<$Res>;
}

class _$QODLoadingStateCopyWithImpl<$Res> extends _$QodStateCopyWithImpl<$Res>
    implements $QODLoadingStateCopyWith<$Res> {
  _$QODLoadingStateCopyWithImpl(
      QODLoadingState _value, $Res Function(QODLoadingState) _then)
      : super(_value, (v) => _then(v as QODLoadingState));

  @override
  QODLoadingState get _value => super._value as QODLoadingState;
}

class _$QODLoadingState implements QODLoadingState {
  const _$QODLoadingState();

  @override
  String toString() {
    return 'QodState.qodLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QODLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required Result qodLoading(),
    @required Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
  }) {
    assert(initialState != null);
    assert(qodLoading != null);
    assert(qodLoaded != null);
    return qodLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result qodLoading(),
    Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (qodLoading != null) {
      return qodLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(QODInitialState value),
    @required Result qodLoading(QODLoadingState value),
    @required Result qodLoaded(QODLoaded value),
  }) {
    assert(initialState != null);
    assert(qodLoading != null);
    assert(qodLoaded != null);
    return qodLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QODInitialState value),
    Result qodLoading(QODLoadingState value),
    Result qodLoaded(QODLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (qodLoading != null) {
      return qodLoading(this);
    }
    return orElse();
  }
}

abstract class QODLoadingState implements QodState {
  const factory QODLoadingState() = _$QODLoadingState;
}

abstract class $QODLoadedCopyWith<$Res> {
  factory $QODLoadedCopyWith(QODLoaded value, $Res Function(QODLoaded) then) =
      _$QODLoadedCopyWithImpl<$Res>;
  $Res call({Either<Failure, QuoteModel> quoteOfDay});
}

class _$QODLoadedCopyWithImpl<$Res> extends _$QodStateCopyWithImpl<$Res>
    implements $QODLoadedCopyWith<$Res> {
  _$QODLoadedCopyWithImpl(QODLoaded _value, $Res Function(QODLoaded) _then)
      : super(_value, (v) => _then(v as QODLoaded));

  @override
  QODLoaded get _value => super._value as QODLoaded;

  @override
  $Res call({
    Object quoteOfDay = freezed,
  }) {
    return _then(QODLoaded(
      quoteOfDay == freezed
          ? _value.quoteOfDay
          : quoteOfDay as Either<Failure, QuoteModel>,
    ));
  }
}

class _$QODLoaded implements QODLoaded {
  const _$QODLoaded(this.quoteOfDay) : assert(quoteOfDay != null);

  @override
  final Either<Failure, QuoteModel> quoteOfDay;

  @override
  String toString() {
    return 'QodState.qodLoaded(quoteOfDay: $quoteOfDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QODLoaded &&
            (identical(other.quoteOfDay, quoteOfDay) ||
                const DeepCollectionEquality()
                    .equals(other.quoteOfDay, quoteOfDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quoteOfDay);

  @override
  $QODLoadedCopyWith<QODLoaded> get copyWith =>
      _$QODLoadedCopyWithImpl<QODLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialState(),
    @required Result qodLoading(),
    @required Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
  }) {
    assert(initialState != null);
    assert(qodLoading != null);
    assert(qodLoaded != null);
    return qodLoaded(quoteOfDay);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialState(),
    Result qodLoading(),
    Result qodLoaded(Either<Failure, QuoteModel> quoteOfDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (qodLoaded != null) {
      return qodLoaded(quoteOfDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialState(QODInitialState value),
    @required Result qodLoading(QODLoadingState value),
    @required Result qodLoaded(QODLoaded value),
  }) {
    assert(initialState != null);
    assert(qodLoading != null);
    assert(qodLoaded != null);
    return qodLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialState(QODInitialState value),
    Result qodLoading(QODLoadingState value),
    Result qodLoaded(QODLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (qodLoaded != null) {
      return qodLoaded(this);
    }
    return orElse();
  }
}

abstract class QODLoaded implements QodState {
  const factory QODLoaded(Either<Failure, QuoteModel> quoteOfDay) = _$QODLoaded;

  Either<Failure, QuoteModel> get quoteOfDay;
  $QODLoadedCopyWith<QODLoaded> get copyWith;
}
