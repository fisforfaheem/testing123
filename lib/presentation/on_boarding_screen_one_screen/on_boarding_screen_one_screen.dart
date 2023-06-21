import 'bloc/on_boarding_screen_one_bloc.dart';
import 'models/on_boarding_screen_one_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnBoardingScreenOneBloc>(
      create: (context) => OnBoardingScreenOneBloc(OnBoardingScreenOneState(
        onBoardingScreenOneModelObj: OnBoardingScreenOneModel(),
      ))
        ..add(OnBoardingScreenOneInitialEvent()),
      child: OnBoardingScreenOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingScreenOneBloc, OnBoardingScreenOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse7180x216,
                    height: getVerticalSize(
                      180,
                    ),
                    width: getHorizontalSize(
                      216,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      658,
                    ),
                    width: getHorizontalSize(
                      410,
                    ),
                    margin: getMargin(
                      left: 20,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: getHorizontalSize(
                              261,
                            ),
                            margin: getMargin(
                              left: 64,
                            ),
                            child: Text(
                              "msg_let_s_make_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold32,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArtboard1,
                          height: getSize(
                            391,
                          ),
                          width: getSize(
                            391,
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse8,
                          height: getVerticalSize(
                            293,
                          ),
                          width: getHorizontalSize(
                            153,
                          ),
                          alignment: Alignment.bottomRight,
                          margin: getMargin(
                            bottom: 48,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: getHorizontalSize(
                              277,
                            ),
                            margin: getMargin(
                              left: 56,
                              bottom: 99,
                            ),
                            child: Text(
                              "msg_are_you_nervous".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular20Black900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 47,
                        right: 22,
                        bottom: 9,
                      ),
                      child: Text(
                        "lbl_skip".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Gray400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: getPadding(
                left: 14,
                right: 13,
                bottom: 11,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: getHorizontalSize(
                      129,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        5,
                      ),
                      thickness: getVerticalSize(
                        5,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getHorizontalSize(
                      137,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        5,
                      ),
                      thickness: getVerticalSize(
                        5,
                      ),
                      color: ColorConstant.gray300,
                      indent: getHorizontalSize(
                        8,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getHorizontalSize(
                      137,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        5,
                      ),
                      thickness: getVerticalSize(
                        5,
                      ),
                      color: ColorConstant.gray300,
                      indent: getHorizontalSize(
                        8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
