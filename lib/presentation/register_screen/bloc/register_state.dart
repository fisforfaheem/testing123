// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

class RegisterState extends Equatable {
  RegisterState({
    this.fullnameController,
    this.emailController,
    this.passwordController,
    this.confirmpasswordController,
    this.registerModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  RegisterModel? registerModelObj;

  @override
  List<Object?> get props => [
        fullnameController,
        emailController,
        passwordController,
        confirmpasswordController,
        registerModelObj,
      ];
  RegisterState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      fullnameController: fullnameController ?? this.fullnameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
