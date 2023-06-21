// ignore_for_file: must_be_immutable

part of 'errpr_404_bloc.dart';

class Errpr404State extends Equatable {
  Errpr404State({this.errpr404ModelObj});

  Errpr404Model? errpr404ModelObj;

  @override
  List<Object?> get props => [
        errpr404ModelObj,
      ];
  Errpr404State copyWith({Errpr404Model? errpr404ModelObj}) {
    return Errpr404State(
      errpr404ModelObj: errpr404ModelObj ?? this.errpr404ModelObj,
    );
  }
}
