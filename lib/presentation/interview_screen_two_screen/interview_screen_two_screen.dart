import 'bloc/interview_screen_two_bloc.dart';
import 'models/interview_screen_two_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class InterviewScreenTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<InterviewScreenTwoBloc>(
        create: (context) => InterviewScreenTwoBloc(InterviewScreenTwoState(
            interviewScreenTwoModelObj: InterviewScreenTwoModel()))
          ..add(InterviewScreenTwoInitialEvent()),
        child: InterviewScreenTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InterviewScreenTwoBloc, InterviewScreenTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  height: size.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArtboard12,
                        height: getVerticalSize(210),
                        width: getHorizontalSize(214),
                        alignment: Alignment.topLeft),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgGroup15),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: getMargin(
                                          left: 81, top: 38, right: 80),
                                      padding: getPadding(
                                          left: 18,
                                          top: 6,
                                          right: 18,
                                          bottom: 6),
                                      decoration: AppDecoration.fillWhiteA700a5
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder19),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                                height: getSize(11),
                                                width: getSize(11),
                                                margin: getMargin(
                                                    top: 7, bottom: 7),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.redA70001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 5,
                                                    right: 19),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_recording_session2"
                                                                  .tr,
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .black90001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300)),
                                                      TextSpan(
                                                          text: "lbl_00_15".tr,
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .black90001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ]),
                                                    textAlign: TextAlign.left))
                                          ])),
                                  Spacer(),
                                  Container(
                                      height: getVerticalSize(384),
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUntitled4021,
                                                height: getVerticalSize(225),
                                                width: getHorizontalSize(149),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(35)),
                                                alignment: Alignment.topRight,
                                                margin: getMargin(right: 20)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: double.maxFinite,
                                                    margin: getMargin(top: 183),
                                                    padding: getPadding(
                                                        left: 41,
                                                        top: 40,
                                                        right: 41,
                                                        bottom: 40),
                                                    decoration: AppDecoration
                                                        .gradientBlack90000Black90001,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCreativecommons,
                                                              height:
                                                                  getSize(24),
                                                              width:
                                                                  getSize(24),
                                                              margin: getMargin(
                                                                  left: 1,
                                                                  top: 74,
                                                                  bottom: 23)),
                                                          CustomIconButton(
                                                              height: 55,
                                                              width: 55,
                                                              margin: getMargin(
                                                                  top: 59,
                                                                  bottom: 7),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgVideocamera)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgVolume,
                                                              height:
                                                                  getVerticalSize(
                                                                      70),
                                                              width:
                                                                  getHorizontalSize(
                                                                      69),
                                                              margin: getMargin(
                                                                  top: 51),
                                                              onTap: () {
                                                                onTapImgVolume(
                                                                    context);
                                                              }),
                                                          CustomIconButton(
                                                              height: 55,
                                                              width: 55,
                                                              margin: getMargin(
                                                                  top: 59,
                                                                  bottom: 7),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMic)),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgVolumeWhiteA700,
                                                              height:
                                                                  getSize(24),
                                                              width:
                                                                  getSize(24),
                                                              margin: getMargin(
                                                                  top: 74,
                                                                  bottom: 23))
                                                        ])))
                                          ]))
                                ])))
                  ]))));
    });
  }

  onTapImgVolume(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.scoreOneScreen,
    );
  }
}
