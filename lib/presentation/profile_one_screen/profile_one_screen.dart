import 'bloc/profile_one_bloc.dart';
import 'models/profile_one_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileOneBloc>(
        create: (context) => ProfileOneBloc(
            ProfileOneState(profileOneModelObj: ProfileOneModel()))
          ..add(ProfileOneInitialEvent()),
        child: ProfileOneScreen());
  }

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
                                                      text:
                                                          "lbl_let_s_get_to".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(32),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text:
                                                          "msg_know_you_better"
                                                              .tr,
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
                      BlocSelector<ProfileOneBloc, ProfileOneState,
                              TextEditingController?>(
                          selector: (state) => state.frametwentynineController,
                          builder: (context, frametwentynineController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: frametwentynineController,
                                hintText: "msg_enter_your_expertise".tr,
                                margin: getMargin(left: 28, top: 29, right: 29),
                                variant:
                                    TextFormFieldVariant.OutlineBluegray900,
                                padding: TextFormFieldPadding.PaddingT21,
                                fontStyle:
                                    TextFormFieldFontStyle.RobotoRomanMedium15,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 21,
                                        top: 15,
                                        right: 15,
                                        bottom: 15),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgFrame30Gray50030x30)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)));
                          }),
                      BlocSelector<ProfileOneBloc, ProfileOneState,
                              TextEditingController?>(
                          selector: (state) => state.frametwentysixController,
                          builder: (context, frametwentysixController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: frametwentysixController,
                                hintText: "msg_please_enter".tr,
                                margin: getMargin(left: 28, top: 17, right: 29),
                                variant:
                                    TextFormFieldVariant.OutlineBluegray900,
                                padding: TextFormFieldPadding.PaddingT21,
                                fontStyle:
                                    TextFormFieldFontStyle.RobotoRomanMedium15,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 21,
                                        top: 15,
                                        right: 15,
                                        bottom: 15),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgFrame3030x30)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)));
                          }),
                      BlocSelector<ProfileOneBloc, ProfileOneState,
                              TextEditingController?>(
                          selector: (state) => state.countryController,
                          builder: (context, countryController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: countryController,
                                hintText: "msg_please_enter2".tr,
                                margin: getMargin(left: 28, top: 20, right: 29),
                                variant:
                                    TextFormFieldVariant.OutlineBluegray900,
                                padding: TextFormFieldPadding.PaddingT21,
                                fontStyle:
                                    TextFormFieldFontStyle.RobotoRomanMedium15,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 21,
                                        top: 15,
                                        right: 15,
                                        bottom: 15),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFrame301)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)));
                          }),
                      BlocSelector<ProfileOneBloc, ProfileOneState,
                              TextEditingController?>(
                          selector: (state) => state.cityController,
                          builder: (context, cityController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: cityController,
                                hintText: "lbl_city".tr,
                                margin: getMargin(left: 28, top: 20, right: 29),
                                variant:
                                    TextFormFieldVariant.OutlineBluegray900,
                                padding: TextFormFieldPadding.PaddingT21,
                                fontStyle:
                                    TextFormFieldFontStyle.RobotoRomanMedium15,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 21,
                                        top: 15,
                                        right: 15,
                                        bottom: 15),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFrame302)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)));
                          }),
                      CustomButton(
                          height: getVerticalSize(49),
                          width: getHorizontalSize(188),
                          text: "lbl_submit".tr,
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
                              child: Text("lbl_skip".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular20BlueA400
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline))))
                    ]))));
  }

  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapTxtSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
