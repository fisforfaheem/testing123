import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
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
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    616,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
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
                                imagePath:
                                    ImageConstant.imgArtboard1copy250x250,
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
                            ],
                          ),
                        ),
                      ),
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
                    ],
                  ),
                ),
                Spacer(),
                CustomButton(
                  height: getVerticalSize(
                    40,
                  ),
                  width: getHorizontalSize(
                    150,
                  ),
                  text: "Get Started ->",
                  margin: getMargin(
                    bottom: 103,
                  ),
                  variant: ButtonVariant.OutlineWhiteA700,
                  shape: ButtonShape.CircleBorder20,
                  padding: ButtonPadding.PaddingAll9,
                  fontStyle: ButtonFontStyle.PoppinsMedium14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
