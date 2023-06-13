import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreenOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.02,
                -0.01,
              ),
              end: Alignment(
                0.96,
                1,
              ),
              colors: [
                ColorConstant.cyanA400,
                ColorConstant.greenA200,
              ],
            ),
          ),
          child: Container(
            height: size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArtboard1copy412x430,
                  height: getVerticalSize(
                    412,
                  ),
                  width: getHorizontalSize(
                    430,
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 81,
                      right: 82,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArtboard1copy250x250,
                          height: getSize(
                            250,
                          ),
                          width: getSize(
                            250,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 22,
                          ),
                          child: Text(
                            "Master Your Interview Skills",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular20WhiteA700,
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            40,
                          ),
                          width: getHorizontalSize(
                            150,
                          ),
                          text: "Get Started ->",
                          margin: getMargin(
                            top: 123,
                          ),
                          variant: ButtonVariant.OutlineWhiteA700,
                          shape: ButtonShape.CircleBorder20,
                          padding: ButtonPadding.PaddingAll9,
                          fontStyle: ButtonFontStyle.PoppinsMedium14,
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            40,
                          ),
                          width: getHorizontalSize(
                            155,
                          ),
                          text: "Login / Sign Up",
                          margin: getMargin(
                            top: 23,
                          ),
                          shape: ButtonShape.CircleBorder20,
                          padding: ButtonPadding.PaddingAll9,
                          fontStyle: ButtonFontStyle.PoppinsMedium14,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
