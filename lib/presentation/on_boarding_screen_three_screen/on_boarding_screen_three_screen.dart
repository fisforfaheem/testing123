import 'bloc/on_boarding_screen_three_bloc.dart';
import 'models/on_boarding_screen_three_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenThreeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnBoardingScreenThreeBloc>(
      create: (context) => OnBoardingScreenThreeBloc(OnBoardingScreenThreeState(
        onBoardingScreenThreeModelObj: OnBoardingScreenThreeModel(),
      ))
        ..add(OnBoardingScreenThreeInitialEvent()),
      child: OnBoardingScreenThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingScreenThreeBloc, OnBoardingScreenThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      625,
                    ),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArtboard1copyAmber400,
                          height: getVerticalSize(
                            500,
                          ),
                          width: getHorizontalSize(
                            430,
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse9219x215,
                          height: getVerticalSize(
                            219,
                          ),
                          width: getHorizontalSize(
                            215,
                          ),
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      359,
                    ),
                    margin: getMargin(
                      left: 35,
                      top: 60,
                      right: 35,
                    ),
                    child: Text(
                      "msg_get_started_with".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular20Black900,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      213,
                    ),
                    margin: getMargin(
                      top: 11,
                    ),
                    child: Text(
                      "msg_land_on_your_dream".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsBold32,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 53,
                        right: 13,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_get_started2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Gray800,
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
