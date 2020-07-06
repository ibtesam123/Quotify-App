part of 'qod_bloc.dart';

@freezed
abstract class QodEvent with _$QodEvent{
  const factory QodEvent.getQOD() = GetQOD;
  const factory QodEvent.cancelRequest() = CancelRequest;
}
