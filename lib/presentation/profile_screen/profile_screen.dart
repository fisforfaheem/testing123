import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/presentation/home_page/home_page.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  TextEditingController fullnameoneController = TextEditingController();

  TextEditingController dateofbirthController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  TextEditingController statelayerController = TextEditingController();

  TextEditingController statelayeroneController = TextEditingController();

  TextEditingController statelayertwoController = TextEditingController();

  TextEditingController statelayerController1 = TextEditingController();

  TextEditingController statelayerfourController = TextEditingController();

  TextEditingController statelayerfiveController = TextEditingController();

  TextEditingController statelayersixController = TextEditingController();

  TextEditingController statelayerController2 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(right: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(286),
                                        width: getHorizontalSize(350),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(210),
                                                      width: getHorizontalSize(
                                                          214),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgArtboard12,
                                                                height:
                                                                    getVerticalSize(
                                                                        210),
                                                                width:
                                                                    getHorizontalSize(
                                                                        214),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleft,
                                                                height:
                                                                    getSize(40),
                                                                width:
                                                                    getSize(40),
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            25,
                                                                        top:
                                                                            40),
                                                                onTap: () {
                                                                  onTapImgArrowleft(
                                                                      context);
                                                                })
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 98, right: 29),
                                                      child: Text(
                                                          "Please Fill Your Profile.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular20Gray90001))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                      "We’re excited to know more about you!",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14Gray60001)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 31),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                color:
                                                                    ColorConstant
                                                                        .teal100,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder45),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            92),
                                                                        width: getSize(
                                                                            92),
                                                                        padding: getPadding(
                                                                            left:
                                                                                18,
                                                                            top:
                                                                                16,
                                                                            right:
                                                                                18,
                                                                            bottom:
                                                                                16),
                                                                        decoration: AppDecoration
                                                                            .fillTeal100
                                                                            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder45),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgUserBlack90001,
                                                                              height: getSize(56),
                                                                              width: getSize(56),
                                                                              alignment: Alignment.topCenter)
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            28,
                                                                        top: 40,
                                                                        bottom:
                                                                            32),
                                                                child: Text(
                                                                    "Upload Photo",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanSemiBold16
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.underline)))
                                                          ])))
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCloseBlack90001,
                                        height: getSize(40),
                                        width: getSize(40),
                                        margin: getMargin(top: 40, bottom: 206))
                                  ]),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 20),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.gray400,
                                          indent: getHorizontalSize(67),
                                          endIndent: getHorizontalSize(42)))),
                              Padding(
                                  padding: getPadding(left: 64, top: 22),
                                  child: Text("Full Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  width: getHorizontalSize(245),
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: fullnameoneController,
                                  hintText: "Please Enter Your Full Name",
                                  margin: getMargin(left: 64, top: 9)),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("Gender",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(left: 64, top: 9),
                                  child: Row(children: [
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(69),
                                        text: "Male",
                                        variant: ButtonVariant.OutlineGray9001e,
                                        shape: ButtonShape.RoundedBorder6,
                                        padding: ButtonPadding.PaddingT18,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRegular16),
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(87),
                                        text: "Female",
                                        margin: getMargin(left: 7),
                                        variant: ButtonVariant.OutlineGray9001e,
                                        shape: ButtonShape.RoundedBorder6,
                                        padding: ButtonPadding.PaddingT18,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRegular16)
                                  ])),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("Date of Birth",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  width: getHorizontalSize(245),
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: dateofbirthController,
                                  hintText: "DD/MM/YYYY",
                                  margin: getMargin(left: 64, top: 9)),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("Phone No.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  width: getHorizontalSize(245),
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: phoneController,
                                  hintText: "Please Enter Your Phone No.",
                                  margin: getMargin(left: 64, top: 9),
                                  textInputType: TextInputType.phone),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("Email",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  width: getHorizontalSize(245),
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: emailoneController,
                                  hintText: "Please Enter Your Email",
                                  margin: getMargin(left: 64, top: 9),
                                  textInputType: TextInputType.emailAddress),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("Education",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayerController,
                                  hintText: "Please Enter Your Education level",
                                  margin:
                                      getMargin(left: 64, top: 9, right: 57),
                                  alignment: Alignment.center),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayeroneController,
                                  hintText: "Please Enter Your Education level",
                                  margin:
                                      getMargin(left: 64, top: 5, right: 57),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("+ Add More",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              Container(
                                  width: getHorizontalSize(91),
                                  margin: getMargin(left: 64, top: 5),
                                  child: Text("Experience",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayertwoController,
                                  hintText: "Please Enter Your Experience",
                                  margin: getMargin(left: 64, right: 57),
                                  alignment: Alignment.center),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayerController1,
                                  hintText: "Please Enter Your Experience",
                                  margin:
                                      getMargin(left: 64, top: 5, right: 57),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("+ Add More",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              Container(
                                  width: getHorizontalSize(91),
                                  margin: getMargin(left: 64, top: 5),
                                  child: Text("Skills ",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayerfourController,
                                  hintText: "Please Enter Your Experience",
                                  margin: getMargin(left: 64, right: 57),
                                  alignment: Alignment.center),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayerfiveController,
                                  hintText: "Please Enter Your Experience",
                                  margin:
                                      getMargin(left: 64, top: 5, right: 57),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("+ Add More",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              Container(
                                  width: getHorizontalSize(181),
                                  margin: getMargin(left: 64, top: 5),
                                  child: Text("Certifications & Awards",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayersixController,
                                  hintText: "Please Enter Your Experience",
                                  margin: getMargin(left: 64, right: 57),
                                  alignment: Alignment.center),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: statelayerController2,
                                  hintText: "Please Enter Your Experience",
                                  margin:
                                      getMargin(left: 64, top: 5, right: 57),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("+ Add More",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              CustomButton(
                                  height: getVerticalSize(49),
                                  width: getHorizontalSize(188),
                                  text: "Save",
                                  margin: getMargin(top: 42, right: 96),
                                  onTap: () {
                                    onTapSave(context);
                                  },
                                  alignment: Alignment.centerRight),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(192),
                                      margin: getMargin(top: 49, right: 94),
                                      child: Text(
                                          "All rights reserved to Mock First Official",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtPoppinsRegular10)))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Interview:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
