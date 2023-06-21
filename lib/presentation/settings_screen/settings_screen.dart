import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/presentation/home_page/home_page.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(right: 25),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: getVerticalSize(210),
                                      width: getHorizontalSize(214),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArtboard12,
                                                height: getVerticalSize(210),
                                                width: getHorizontalSize(214),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        right: 10, bottom: 14),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleft,
                                                              height:
                                                                  getSize(40),
                                                              width:
                                                                  getSize(40),
                                                              onTap: () {
                                                                onTapImgArrowleft(
                                                                    context);
                                                              }),
                                                          CustomButton(
                                                              width:
                                                                  getHorizontalSize(
                                                                      130),
                                                              text:
                                                                  "lbl_day_mode"
                                                                      .tr,
                                                              margin: getMargin(
                                                                  top: 76),
                                                              shape: ButtonShape
                                                                  .Square,
                                                              padding:
                                                                  ButtonPadding
                                                                      .PaddingT6,
                                                              fontStyle:
                                                                  ButtonFontStyle
                                                                      .PoppinsRegular16,
                                                              prefixWidget: Container(
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              10),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgProfileBlack90001)),
                                                              onTap: () {
                                                                onTapDaymode(
                                                                    context);
                                                              },
                                                              alignment: Alignment
                                                                  .centerRight)
                                                        ])))
                                          ])),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgCloseBlack90001,
                                      height: getSize(40),
                                      width: getSize(40),
                                      margin: getMargin(top: 40, bottom: 130))
                                ])),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 6),
                                child: SizedBox(
                                    width: getHorizontalSize(297),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray400)))),
                        CustomButton(
                            width: getHorizontalSize(142),
                            text: "lbl_night_mode".tr,
                            margin: getMargin(left: 81, top: 20),
                            shape: ButtonShape.Square,
                            padding: ButtonPadding.PaddingT6,
                            fontStyle: ButtonFontStyle.PoppinsRegular16,
                            prefixWidget: Container(
                                margin: getMargin(right: 11),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgPrefrencesBlack90001)),
                            onTap: () {
                              onTapNightmode(context);
                            }),
                        Spacer(),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(bottom: 72),
                                child: Text("msg_all_rights_reserved".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular10)))
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

  onTapDaymode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  onTapNightmode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.preferencesScreen,
    );
  }
}
