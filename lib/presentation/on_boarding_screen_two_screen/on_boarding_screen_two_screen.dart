import 'package:faheem_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  829,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: getHorizontalSize(
                          257,
                        ),
                        child: Text(
                          "AI Assistance & Guidance",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsBold32,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse8293x146,
                      height: getVerticalSize(
                        293,
                      ),
                      width: getHorizontalSize(
                        146,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: getMargin(
                        bottom: 45,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse9,
                      height: getVerticalSize(
                        226,
                      ),
                      width: getHorizontalSize(
                        248,
                      ),
                      alignment: Alignment.topRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup26,
                      height: getVerticalSize(
                        425,
                      ),
                      width: getHorizontalSize(
                        430,
                      ),
                      alignment: Alignment.topCenter,
                      margin: getMargin(
                        top: 158,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: getHorizontalSize(
                          360,
                        ),
                        margin: getMargin(
                          bottom: 90,
                        ),
                        child: Text(
                          "Helping you asses you Interview communication and verbal skills via",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsRegular20Black900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 56,
                  right: 16,
                  bottom: 9,
                ),
                child: Text(
                  "Skip",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14Gray400,
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
                  color: ColorConstant.gray30001,
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
