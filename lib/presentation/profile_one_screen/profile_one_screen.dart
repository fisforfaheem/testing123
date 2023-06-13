import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileOneScreen extends StatelessWidget {
  TextEditingController frametwentynineController = TextEditingController();

  TextEditingController frametwentysixController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(169),
                              width: getHorizontalSize(350),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: getHorizontalSize(272),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Let’s get to\n",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(32),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "know you better!",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .cyanA400,
                                                          fontSize:
                                                              getFontSize(32),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600))
                                                ]),
                                                textAlign: TextAlign.center))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse7134x264,
                                        height: getVerticalSize(134),
                                        width: getHorizontalSize(264),
                                        alignment: Alignment.topLeft)
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgGettoknowyou,
                          height: getVerticalSize(233),
                          width: getHorizontalSize(236),
                          margin: getMargin(top: 13)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: frametwentynineController,
                          hintText: "-- Enter your Expertise level --",
                          margin: getMargin(left: 28, top: 29, right: 29),
                          variant: TextFormFieldVariant.OutlineBluegray900,
                          padding: TextFormFieldPadding.PaddingT21,
                          fontStyle: TextFormFieldFontStyle.RobotoRomanMedium15,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 15, right: 15, bottom: 15),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgFrame30Gray50030x30)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: frametwentysixController,
                          hintText: "-- Please enter your industry --",
                          margin: getMargin(left: 28, top: 17, right: 29),
                          variant: TextFormFieldVariant.OutlineBluegray900,
                          padding: TextFormFieldPadding.PaddingT21,
                          fontStyle: TextFormFieldFontStyle.RobotoRomanMedium15,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 15, right: 15, bottom: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrame3030x30)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: countryController,
                          hintText: "-- Please enter your country --",
                          margin: getMargin(left: 28, top: 20, right: 29),
                          variant: TextFormFieldVariant.OutlineBluegray900,
                          padding: TextFormFieldPadding.PaddingT21,
                          fontStyle: TextFormFieldFontStyle.RobotoRomanMedium15,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 15, right: 15, bottom: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrame301)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: cityController,
                          hintText: "-- City --",
                          margin: getMargin(left: 28, top: 20, right: 29),
                          variant: TextFormFieldVariant.OutlineBluegray900,
                          padding: TextFormFieldPadding.PaddingT21,
                          fontStyle: TextFormFieldFontStyle.RobotoRomanMedium15,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 15, right: 15, bottom: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrame302)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60))),
                      CustomButton(
                          height: getVerticalSize(49),
                          width: getHorizontalSize(188),
                          text: "Submit",
                          margin: getMargin(top: 49),
                          onTap: () {
                            onTapSubmit(context);
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSkip(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 26, bottom: 5),
                              child: Text("Skip",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular20BlueA400
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline))))
                    ]))));
  }

  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  onTapTxtSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
