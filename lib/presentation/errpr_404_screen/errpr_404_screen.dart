import 'bloc/errpr_404_bloc.dart';
import 'models/errpr_404_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Errpr404Screen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<Errpr404Bloc>(
        create: (context) =>
            Errpr404Bloc(Errpr404State(errpr404ModelObj: Errpr404Model()))
              ..add(Errpr404InitialEvent()),
        child: Errpr404Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Errpr404Bloc, Errpr404State>(builder: (context, state) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                    height:
                                                        getVerticalSize(210),
                                                    width:
                                                        getHorizontalSize(214),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height: getSize(40),
                                                    width: getSize(40),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: getMargin(
                                                        left: 25, top: 40),
                                                    onTap: () {
                                                      onTapImgArrowleft(
                                                          context);
                                                    })
                                              ])),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCloseBlack90001,
                                          height: getSize(40),
                                          width: getSize(40),
                                          margin:
                                              getMargin(top: 40, bottom: 130))
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
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding: getPadding(bottom: 4),
                                      child: Text("msg_all_rights_reserved".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsRegular10))),
                              CustomButton(
                                  height: getVerticalSize(49),
                                  width: getHorizontalSize(188),
                                  text: "lbl_go_back".tr,
                                  padding: ButtonPadding.PaddingT18,
                                  fontStyle: ButtonFontStyle.RobotoMedium14,
                                  alignment: Alignment.center)
                            ]))
                      ]))));
    });
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
