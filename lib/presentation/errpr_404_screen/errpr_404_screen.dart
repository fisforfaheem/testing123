import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Errpr404Screen extends StatelessWidget {
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
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
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArtboard12,
                                                  height: getVerticalSize(210),
                                                  width: getHorizontalSize(214),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  alignment: Alignment.topLeft,
                                                  margin: getMargin(
                                                      left: 25, top: 40),
                                                  onTap: () {
                                                    onTapImgArrowleft(context);
                                                  })
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCloseBlack90001,
                                        height: getSize(40),
                                        width: getSize(40),
                                        margin: getMargin(top: 40, bottom: 130))
                                  ]))),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup35,
                          height: getVerticalSize(260),
                          width: getHorizontalSize(367),
                          margin: getMargin(top: 51)),
                      Spacer(),
                      Container(
                          height: getVerticalSize(49),
                          width: getHorizontalSize(193),
                          margin: getMargin(bottom: 171),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text(
                                        "All rights reserved to Mock First Official",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular10))),
                            CustomButton(
                                height: getVerticalSize(49),
                                width: getHorizontalSize(188),
                                text: "Go back",
                                padding: ButtonPadding.PaddingT18,
                                fontStyle: ButtonFontStyle.RobotoMedium14,
                                alignment: Alignment.center)
                          ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
