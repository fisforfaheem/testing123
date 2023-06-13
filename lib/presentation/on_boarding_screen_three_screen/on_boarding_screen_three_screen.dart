import 'package:faheem_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  "Get started with Mock interview with Mock First and ",
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
                  "Land on your \nDream Job!",
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
                    "Get Started",
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
  }
}
