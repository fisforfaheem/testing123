// ignore_for_file: must_be_immutable

part of 'preferences_bloc.dart';

class PreferencesState extends Equatable {
  PreferencesState({this.preferencesModelObj});

  PreferencesModel? preferencesModelObj;

  @override
  List<Object?> get props => [
        preferencesModelObj,
      ];
  PreferencesState copyWith({PreferencesModel? preferencesModelObj}) {
    return PreferencesState(
      preferencesModelObj: preferencesModelObj ?? this.preferencesModelObj,
    );
  }
}
