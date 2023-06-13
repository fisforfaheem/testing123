import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/app_bar/appbar_image.dart';
import 'package:faheem_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(88),
                leadingWidth: 65,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 25, top: 8, bottom: 8),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(40),
                      width: getSize(40),
                      svgPath: ImageConstant.imgShare,
                      margin: getMargin(left: 30, top: 8, right: 30, bottom: 8))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(111),
                          width: getHorizontalSize(204),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("Welcome ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold32Black900)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("Ammar!",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold48))
                              ])),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 32),
                          child: Text(
                              "We’re excited to help you ace your dream job interview in best way!",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular16)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(left: 162, top: 97),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: getHorizontalSize(1)),
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder45),
                              child: Container(
                                  height: getSize(91),
                                  width: getSize(91),
                                  padding: getPadding(
                                      left: 20, top: 24, right: 20, bottom: 24),
                                  decoration: AppDecoration.outline.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder45),
                                  child: Stack(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLayer4,
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(48),
                                        alignment: Alignment.center)
                                  ])))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(372),
                              width: getHorizontalSize(373),
                              margin: getMargin(top: 14),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            width: getHorizontalSize(301),
                                            child: Text(
                                                "Let’s get started with your mock video interview",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular16))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin:
                                                getMargin(left: 64, top: 134),
                                            padding: getPadding(
                                                left: 26,
                                                top: 9,
                                                right: 26,
                                                bottom: 9),
                                            decoration: AppDecoration
                                                .fillCyanA400
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder24),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "Start Recording",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.1))))
                                                ]))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse7356x143,
                                        height: getVerticalSize(356),
                                        width: getHorizontalSize(143),
                                        alignment: Alignment.centerRight)
                                  ])))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
