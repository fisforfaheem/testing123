import 'bloc/settings_one_bloc.dart';
import 'models/settings_one_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/presentation/home_page/home_page.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsOneScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsOneBloc>(
        create: (context) => SettingsOneBloc(
            SettingsOneState(settingsOneModelObj: SettingsOneModel()))
          ..add(SettingsOneInitialEvent()),
        child: SettingsOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsOneBloc, SettingsOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(right: 25),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getVerticalSize(231),
                                          width: getHorizontalSize(363),
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            210),
                                                        width:
                                                            getHorizontalSize(
                                                                214),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topLeft,
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
                                                                      getSize(
                                                                          40),
                                                                  width:
                                                                      getSize(
                                                                          40),
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin: getMargin(
                                                                      left: 25,
                                                                      top: 40),
                                                                  onTap: () {
                                                                    onTapImgArrowleft(
                                                                        context);
                                                                  })
                                                            ]))),
                                                CustomButton(
                                                    width:
                                                        getHorizontalSize(167),
                                                    text: "msg_profile_settings"
                                                        .tr,
                                                    margin: getMargin(
                                                        left: 76, bottom: 70),
                                                    shape: ButtonShape.Square,
                                                    padding:
                                                        ButtonPadding.PaddingT6,
                                                    fontStyle: ButtonFontStyle
                                                        .PoppinsRegular16,
                                                    prefixWidget: Container(
                                                        margin: getMargin(
                                                            right: 10),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgProfile)),
                                                    onTap: () {
                                                      onTapProfile(context);
                                                    },
                                                    alignment:
                                                        Alignment.bottomLeft),
                                                CustomButton(
                                                    width:
                                                        getHorizontalSize(145),
                                                    text: "lbl_preferences".tr,
                                                    margin: getMargin(left: 81),
                                                    shape: ButtonShape.Square,
                                                    padding:
                                                        ButtonPadding.PaddingT6,
                                                    fontStyle: ButtonFontStyle
                                                        .PoppinsRegular16,
                                                    prefixWidget: Container(
                                                        margin: getMargin(
                                                            right: 11),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgPrefrences)),
                                                    onTap: () {
                                                      onTapPreferences(context);
                                                    },
                                                    alignment:
                                                        Alignment.bottomLeft),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            bottom: 54),
                                                        child: SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    296),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .gray400))))
                                              ])),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCloseBlack90001,
                                          height: getSize(40),
                                          width: getSize(40),
                                          margin: getMargin(
                                              left: 2, top: 40, bottom: 151))
                                    ]))),
                        Padding(
                            padding: getPadding(top: 15),
                            child: SizedBox(
                                width: getHorizontalSize(296),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.gray400))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 80, top: 14),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgMode,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 7, bottom: 8),
                                      child: Text("lbl_mode".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular16Black90001))
                                ]))),
                        Padding(
                            padding: getPadding(top: 15),
                            child: SizedBox(
                                width: getHorizontalSize(296),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.gray400))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 80, top: 14),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgSharewithcommunity,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 9, bottom: 6),
                                      child: Text("msg_share_with_community".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular16Black90001))
                                ]))),
                        Padding(
                            padding: getPadding(top: 15),
                            child: SizedBox(
                                width: getHorizontalSize(296),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.gray400))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 86, top: 14),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgSearch,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 9, bottom: 6),
                                      child: Text("lbl_privacy_policy".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular16Black90001))
                                ]))),
                        Padding(
                            padding: getPadding(top: 15),
                            child: SizedBox(
                                width: getHorizontalSize(296),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.gray400))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 81, top: 14),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTermsconditions,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 7, bottom: 8),
                                      child: Text("msg_terms_conditions2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular16Black90001))
                                ]))),
                        Spacer(),
                        CustomButton(
                            height: getVerticalSize(49),
                            width: getHorizontalSize(188),
                            text: "lbl_logout".tr,
                            onTap: () {
                              onTapLogout(context);
                            }),
                        Padding(
                            padding: getPadding(top: 55, bottom: 72),
                            child: Text("msg_all_rights_reserved".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular10))
                      ])),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
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
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  onTapPreferences(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.preferencesScreen,
    );
  }

  onTapLogout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
