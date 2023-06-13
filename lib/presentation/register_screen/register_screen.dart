import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    padding: getPadding(left: 16, right: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(238),
                                  width: getHorizontalSize(293),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArtboard1copy,
                                            height: getSize(128),
                                            width: getSize(128),
                                            alignment: Alignment.bottomRight,
                                            margin: getMargin(right: 30)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getSize(40),
                                            width: getSize(40),
                                            alignment: Alignment.topLeft,
                                            margin: getMargin(left: 9, top: 40),
                                            onTap: () {
                                              onTapImgArrowleft(context);
                                            }),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse7117x293,
                                            height: getVerticalSize(117),
                                            width: getHorizontalSize(293),
                                            alignment: Alignment.topCenter)
                                      ]))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: fullnameController,
                              hintText: "Full Name",
                              margin: getMargin(left: 13, top: 66, right: 12),
                              variant: TextFormFieldVariant.OutlineBluegray900,
                              padding: TextFormFieldPadding.PaddingT21,
                              fontStyle:
                                  TextFormFieldFontStyle.RobotoRomanMedium15,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 21, top: 15, right: 15, bottom: 15),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFrame30)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: emailController,
                              hintText: "Email",
                              margin: getMargin(left: 13, top: 20, right: 12),
                              variant: TextFormFieldVariant.OutlineBluegray900,
                              padding: TextFormFieldPadding.PaddingT21,
                              fontStyle:
                                  TextFormFieldFontStyle.RobotoRomanMedium15,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 18, right: 18, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgMail)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: passwordController,
                              hintText: "Password",
                              margin: getMargin(left: 13, top: 20, right: 12),
                              variant: TextFormFieldVariant.OutlineBluegray900,
                              padding: TextFormFieldPadding.PaddingT21,
                              fontStyle:
                                  TextFormFieldFontStyle.RobotoRomanMedium15,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 21, top: 15, right: 15, bottom: 15),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgFrame30Gray500)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60)),
                              isObscureText: true),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: confirmpasswordController,
                              hintText: "Confirm Password",
                              margin: getMargin(left: 13, top: 20, right: 12),
                              variant: TextFormFieldVariant.OutlineBluegray900,
                              padding: TextFormFieldPadding.PaddingT21,
                              fontStyle:
                                  TextFormFieldFontStyle.RobotoRomanMedium15,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 21, top: 15, right: 15, bottom: 15),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgFrame30Gray500)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60)),
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(49),
                              width: getHorizontalSize(188),
                              text: "Sign Up",
                              margin: getMargin(top: 37),
                              onTap: () {
                                onTapSignup(context);
                              }),
                          Padding(
                              padding: getPadding(top: 78, bottom: 5),
                              child: Text("Terms & Conditions Applied",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16Gray500))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterPasscodeOneScreen);
  }
}
