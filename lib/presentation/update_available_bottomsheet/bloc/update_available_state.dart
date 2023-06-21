// ignore_for_file: must_be_immutable

part of 'update_available_bloc.dart';

class UpdateAvailableState extends Equatable {
  UpdateAvailableState({this.updateAvailableModelObj});

  UpdateAvailableModel? updateAvailableModelObj;

  @override
  List<Object?> get props => [
        updateAvailableModelObj,
      ];
  UpdateAvailableState copyWith(
      {UpdateAvailableModel? updateAvailableModelObj}) {
    return UpdateAvailableState(
      updateAvailableModelObj:
          updateAvailableModelObj ?? this.updateAvailableModelObj,
    );
  }
}
