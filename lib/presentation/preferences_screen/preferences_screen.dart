import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PreferencesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(210),
                          width: getHorizontalSize(405),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(210),
                                        width: getHorizontalSize(214),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArtboard12,
                                                  height: getVerticalSize(210),
                                                  width: getHorizontalSize(214),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  alignment: Alignment.topLeft,
                                                  margin: getMargin(
                                                      left: 25, top: 40),
                                                  onTap: () {
                                                    onTapImgArrowleft(context);
                                                  })
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(right: 24),
                                        child: Text(
                                            "We want to make this experience ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Black900))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding:
                                            getPadding(right: 42, bottom: 43),
                                        child: Text("Promising for You!",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold32))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCloseBlack90001,
                                    height: getSize(40),
                                    width: getSize(40),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 40))
                              ])),
                      Padding(
                          padding: getPadding(left: 57, top: 7),
                          child: Text("Please select few preferences below:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(left: 65, top: 24),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Please Select a time frame for the Interview ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "(Min 2 mins - Max 2 Hours)",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(left: 55, top: 16),
                          child: Container(
                              height: getVerticalSize(15),
                              width: getHorizontalSize(297),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(7))),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(7)),
                                  child: LinearProgressIndicator(
                                      value: 0.19,
                                      backgroundColor:
                                          ColorConstant.gray10001)))),
                      CustomButton(
                          height: getVerticalSize(32),
                          width: getHorizontalSize(113),
                          text: "00:05:30",
                          margin: getMargin(left: 57, top: 14),
                          variant: ButtonVariant.OutlineCyanA400,
                          shape: ButtonShape.CircleBorder16,
                          padding: ButtonPadding.PaddingAll3,
                          fontStyle: ButtonFontStyle.PoppinsMedium16Gray500),
                      Container(
                          width: getHorizontalSize(282),
                          margin: getMargin(left: 63, top: 26),
                          child: Text(
                              "Please select Interviewer for the AI Generated avatar",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12)),
                      Padding(
                          padding: getPadding(left: 57, top: 11),
                          child: Row(children: [
                            Container(
                                padding: getPadding(all: 4),
                                decoration: AppDecoration.outlineGray50001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder12),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color:
                                                        ColorConstant.gray10001,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder12),
                                                    child: Container(
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        padding: getPadding(
                                                            left: 3,
                                                            top: 2,
                                                            right: 3,
                                                            bottom: 2),
                                                        decoration: AppDecoration
                                                            .fillGray10001
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder12),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgUser,
                                                              height:
                                                                  getVerticalSize(
                                                                      15),
                                                              width:
                                                                  getHorizontalSize(
                                                                      16),
                                                              alignment: Alignment
                                                                  .bottomCenter)
                                                        ]))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8,
                                                        top: 3,
                                                        bottom: 3),
                                                    child: Text("Male",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoMedium14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.1))))
                                              ]))
                                    ])),
                            Container(
                                margin: getMargin(left: 10),
                                padding: getPadding(all: 4),
                                decoration: AppDecoration.outlineGray50001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder12),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color:
                                                        ColorConstant.gray10001,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder12),
                                                    child: Container(
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        padding: getPadding(
                                                            left: 3,
                                                            top: 2,
                                                            right: 3,
                                                            bottom: 2),
                                                        decoration: AppDecoration
                                                            .fillGray10001
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder12),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgAvatarplaceholder,
                                                              height:
                                                                  getVerticalSize(
                                                                      15),
                                                              width:
                                                                  getHorizontalSize(
                                                                      16),
                                                              alignment: Alignment
                                                                  .bottomCenter)
                                                        ]))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8,
                                                        top: 3,
                                                        bottom: 3),
                                                    child: Text("Female",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoMedium14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.1))))
                                              ]))
                                    ]))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 25),
                              child: Text(
                                  "Please enter your language of communication",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12))),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "English - United State of America",
                          margin: getMargin(left: 57, top: 23, right: 62),
                          variant: ButtonVariant.OutlineBluegray900,
                          shape: ButtonShape.RoundedBorder6,
                          padding: ButtonPadding.PaddingT21,
                          fontStyle: ButtonFontStyle.RobotoRomanMedium15,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFrame303,
                                  height: getSize(30),
                                  width: getSize(30))),
                          alignment: Alignment.center),
                      CustomButton(
                          height: getVerticalSize(49),
                          width: getHorizontalSize(188),
                          text: "Save",
                          margin: getMargin(top: 74),
                          onTap: () {
                            onTapSave(context);
                          },
                          alignment: Alignment.center),
                      Spacer(),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(bottom: 21),
                              child: Text(
                                  "All rights reserved to Mock First Official",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular10)))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.interviewScreenTwoScreen);
  }
}
