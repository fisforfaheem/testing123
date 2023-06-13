import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/presentation/home_page/home_page.dart';
import 'package:faheem_s_application/widgets/app_bar/appbar_image.dart';
import 'package:faheem_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ScoreOneScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                      onTapArrowleft1(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(40),
                      width: getSize(40),
                      svgPath: ImageConstant.imgCloseBlack90001,
                      margin: getMargin(left: 25, top: 8, right: 25, bottom: 8))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(264),
                              margin: getMargin(top: 9),
                              child: Text("We’re analyzing\nthe video",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle
                                      .txtPoppinsSemiBold32Black90001))),
                      Container(
                          height: getVerticalSize(577),
                          width: getHorizontalSize(385),
                          margin: getMargin(top: 73),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse7356x181,
                                height: getVerticalSize(356),
                                width: getHorizontalSize(181),
                                alignment: Alignment.bottomLeft),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    padding: getPadding(
                                        left: 37,
                                        top: 31,
                                        right: 37,
                                        bottom: 31),
                                    decoration: AppDecoration.outlineBlack90019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder19),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Please wait ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium20),
                                          Padding(
                                              padding: getPadding(top: 43),
                                              child: Text("Basic Skills",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14Black900)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 13, right: 6),
                                              child: Container(
                                                  height: getVerticalSize(6),
                                                  width: getHorizontalSize(259),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3))),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3)),
                                                      child: LinearProgressIndicator(
                                                          value: 0.5,
                                                          backgroundColor:
                                                              ColorConstant
                                                                  .blueGray50)))),
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: Text("Body Language",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14Black900)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 14, right: 6),
                                              child: Container(
                                                  height: getVerticalSize(6),
                                                  width: getHorizontalSize(259),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3))),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3)),
                                                      child: LinearProgressIndicator(
                                                          value: 0.7,
                                                          backgroundColor:
                                                              ColorConstant
                                                                  .blueGray50)))),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text("Eye Contact",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14Black900)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 14, right: 6),
                                              child: Container(
                                                  height: getVerticalSize(6),
                                                  width: getHorizontalSize(259),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3))),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3)),
                                                      child: LinearProgressIndicator(
                                                          value: 0.88,
                                                          backgroundColor:
                                                              ColorConstant
                                                                  .blueGray50)))),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Text("Confidence Level",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14Black900)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 16, right: 6),
                                              child: Container(
                                                  height: getVerticalSize(6),
                                                  width: getHorizontalSize(259),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3))),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3)),
                                                      child: LinearProgressIndicator(
                                                          value: 0.15,
                                                          backgroundColor:
                                                              ColorConstant
                                                                  .blueGray50)))),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Text("Verbal Behavior",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14Black900)),
                                          Padding(
                                              padding: getPadding(
                                                  top: 16, right: 6, bottom: 7),
                                              child: Container(
                                                  height: getVerticalSize(6),
                                                  width: getHorizontalSize(259),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3))),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3)),
                                                      child: LinearProgressIndicator(
                                                          value: 0.32,
                                                          backgroundColor:
                                                              ColorConstant
                                                                  .blueGray50))))
                                        ])))
                          ]))
                    ])),
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

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
