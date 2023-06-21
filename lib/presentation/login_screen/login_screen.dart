import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/core/utils/validation_functions.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(238),
                                  width: getHorizontalSize(279),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                height: getVerticalSize(213),
                                                width: getHorizontalSize(172),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse7,
                                                          height:
                                                              getVerticalSize(
                                                                  213),
                                                          width:
                                                              getHorizontalSize(
                                                                  172),
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft,
                                                          height: getSize(40),
                                                          width: getSize(40),
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin: getMargin(
                                                              left: 25,
                                                              top: 40),
                                                          onTap: () {
                                                            onTapImgArrowleft(
                                                                context);
                                                          })
                                                    ]))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArtboard1copy,
                                            height: getSize(128),
                                            width: getSize(128),
                                            alignment: Alignment.bottomRight)
                                      ]))),
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.usernameController,
                              builder: (context, usernameController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: usernameController,
                                    hintText: "msg_email_username".tr,
                                    margin:
                                        getMargin(left: 28, top: 66, right: 29),
                                    variant:
                                        TextFormFieldVariant.OutlineBluegray900,
                                    padding: TextFormFieldPadding.PaddingT21,
                                    fontStyle: TextFormFieldFontStyle
                                        .RobotoRomanMedium15,
                                    textInputType: TextInputType.emailAddress,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 21,
                                            top: 15,
                                            right: 15,
                                            bottom: 15),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFrame30)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(60)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: passwordController,
                                    hintText: "lbl_password".tr,
                                    margin:
                                        getMargin(left: 28, top: 20, right: 29),
                                    variant:
                                        TextFormFieldVariant.OutlineBluegray900,
                                    padding: TextFormFieldPadding.PaddingT21,
                                    fontStyle: TextFormFieldFontStyle
                                        .RobotoRomanMedium15,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 21,
                                            top: 15,
                                            right: 15,
                                            bottom: 15),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFrame30Gray500)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(60)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    isObscureText: true);
                              }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 15, right: 29),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular14
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline)))),
                          CustomButton(
                              height: getVerticalSize(49),
                              width: getHorizontalSize(188),
                              text: "lbl_login".tr,
                              margin: getMargin(top: 22),
                              onTap: () {
                                onTapLogin(context);
                              }),
                          Padding(
                              padding: getPadding(top: 22),
                              child: Text("lbl_or_sign_in_with".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular14Black900)),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgGoogle1Gray100,
                                        height: getSize(68),
                                        width: getSize(68)),
                                    Container(
                                        height: getSize(68),
                                        width: getSize(68),
                                        margin: getMargin(left: 45),
                                        padding: getPadding(all: 11),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGoogle1),
                                                fit: BoxFit.cover)),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFacebook1,
                                              height: getSize(43),
                                              width: getSize(43),
                                              alignment: Alignment.center)
                                        ]))
                                  ])),
                          Padding(
                              padding: getPadding(top: 80),
                              child: Text("msg_don_t_have_an_account".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          Padding(
                              padding: getPadding(top: 13, bottom: 5),
                              child: Text("lbl_register_now".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular20.copyWith(
                                      decoration: TextDecoration.underline)))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileOneScreen,
    );
  }
}
