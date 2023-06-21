// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.usernameController,
    this.passwordController,
    this.loginModelObj,
  });

  TextEditingController? usernameController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        usernameController,
        passwordController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? usernameController,
    TextEditingController? passwordController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      usernameController: usernameController ?? this.usernameController,
      passwordController: passwordController ?? this.passwordController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
