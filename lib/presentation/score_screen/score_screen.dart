import 'bloc/score_bloc.dart';
import 'models/score_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/app_bar/appbar_image.dart';
import 'package:faheem_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_checkbox.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ScoreScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ScoreBloc>(
        create: (context) => ScoreBloc(ScoreState(scoreModelObj: ScoreModel()))
          ..add(ScoreInitialEvent()),
        child: ScoreScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(88),
                leadingWidth: 65,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 25, top: 8, bottom: 8),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(40),
                      width: getSize(40),
                      svgPath: ImageConstant.imgCloseBlack90001,
                      margin: getMargin(left: 25, top: 8, right: 25, bottom: 8))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(0.96, 1),
                        colors: [
                      ColorConstant.cyanA400,
                      ColorConstant.greenA200
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 45, top: 5, right: 45, bottom: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_here_s_your_score".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold32WhiteA700),
                          Container(
                              height: getVerticalSize(508),
                              width: getHorizontalSize(339),
                              margin: getMargin(top: 18),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder19),
                                            child: Container(
                                                height: getVerticalSize(408),
                                                width: getHorizontalSize(339),
                                                padding: getPadding(
                                                    left: 37,
                                                    top: 36,
                                                    right: 37,
                                                    bottom: 36),
                                                decoration: AppDecoration
                                                    .outlineBlack90019
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder19),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right: 6,
                                                                      bottom:
                                                                          26),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 4),
                                                                              child: Text("lbl_basic_skills".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14Black900)),
                                                                          Padding(
                                                                              padding: getPadding(left: 84, bottom: 5),
                                                                              child: RatingBar.builder(
                                                                                  initialRating: 3,
                                                                                  minRating: 0,
                                                                                  direction: Axis.horizontal,
                                                                                  allowHalfRating: false,
                                                                                  itemSize: getVerticalSize(20),
                                                                                  unratedColor: ColorConstant.blueGray100,
                                                                                  itemCount: 5,
                                                                                  updateOnDrag: true,
                                                                                  onRatingUpdate: (rating) {},
                                                                                  itemBuilder: (context, _) {
                                                                                    return Icon(Icons.star, color: ColorConstant.yellow700);
                                                                                  }))
                                                                        ]),
                                                                    BlocSelector<
                                                                            ScoreBloc,
                                                                            ScoreState,
                                                                            TextEditingController?>(
                                                                        selector: (state) =>
                                                                            state
                                                                                .bodylanguageController,
                                                                        builder:
                                                                            (context,
                                                                                bodylanguageController) {
                                                                          return CustomTextFormField(
                                                                              focusNode: FocusNode(),
                                                                              autofocus: true,
                                                                              controller: bodylanguageController,
                                                                              hintText: "lbl_85_good".tr,
                                                                              variant: TextFormFieldVariant.UnderLineGray500,
                                                                              fontStyle: TextFormFieldFontStyle.PoppinsLight10);
                                                                        }),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            46),
                                                                        width: getHorizontalSize(
                                                                            259),
                                                                        margin: getMargin(
                                                                            top:
                                                                                8),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.topRight,
                                                                                  child: RatingBar.builder(
                                                                                      initialRating: 3,
                                                                                      minRating: 0,
                                                                                      direction: Axis.horizontal,
                                                                                      allowHalfRating: false,
                                                                                      itemSize: getVerticalSize(20),
                                                                                      unratedColor: ColorConstant.blueGray100,
                                                                                      itemCount: 5,
                                                                                      updateOnDrag: true,
                                                                                      onRatingUpdate: (rating) {},
                                                                                      itemBuilder: (context, _) {
                                                                                        return Icon(Icons.star, color: ColorConstant.yellow700);
                                                                                      })),
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("lbl_body_language".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14Black900),
                                                                                    BlocSelector<ScoreBloc, ScoreState, TextEditingController?>(
                                                                                        selector: (state) => state.bodylanguageController1,
                                                                                        builder: (context, bodylanguageController1) {
                                                                                          return CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: bodylanguageController1, hintText: "lbl_85_good".tr, variant: TextFormFieldVariant.UnderLineGray500, fontStyle: TextFormFieldFontStyle.PoppinsLight10);
                                                                                        })
                                                                                  ]))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            46),
                                                                        width: getHorizontalSize(
                                                                            259),
                                                                        margin: getMargin(
                                                                            top:
                                                                                8),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.topRight,
                                                                                  child: RatingBar.builder(
                                                                                      initialRating: 3,
                                                                                      minRating: 0,
                                                                                      direction: Axis.horizontal,
                                                                                      allowHalfRating: false,
                                                                                      itemSize: getVerticalSize(20),
                                                                                      unratedColor: ColorConstant.blueGray100,
                                                                                      itemCount: 5,
                                                                                      updateOnDrag: true,
                                                                                      onRatingUpdate: (rating) {},
                                                                                      itemBuilder: (context, _) {
                                                                                        return Icon(Icons.star, color: ColorConstant.yellow700);
                                                                                      })),
                                                                              Align(
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("lbl_eye_contact".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14Black900),
                                                                                    BlocSelector<ScoreBloc, ScoreState, TextEditingController?>(
                                                                                        selector: (state) => state.bodylanguageController2,
                                                                                        builder: (context, bodylanguageController2) {
                                                                                          return CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: bodylanguageController2, hintText: "lbl_85_good".tr, variant: TextFormFieldVariant.UnderLineGray500, fontStyle: TextFormFieldFontStyle.PoppinsLight10);
                                                                                        })
                                                                                  ]))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            46),
                                                                        width: getHorizontalSize(
                                                                            259),
                                                                        margin: getMargin(
                                                                            top:
                                                                                8),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.topRight,
                                                                                  child: RatingBar.builder(
                                                                                      initialRating: 3,
                                                                                      minRating: 0,
                                                                                      direction: Axis.horizontal,
                                                                                      allowHalfRating: false,
                                                                                      itemSize: getVerticalSize(20),
                                                                                      unratedColor: ColorConstant.blueGray100,
                                                                                      itemCount: 5,
                                                                                      updateOnDrag: true,
                                                                                      onRatingUpdate: (rating) {},
                                                                                      itemBuilder: (context, _) {
                                                                                        return Icon(Icons.star, color: ColorConstant.yellow700);
                                                                                      })),
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("msg_confidence_level".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14Black900),
                                                                                    BlocSelector<ScoreBloc, ScoreState, TextEditingController?>(
                                                                                        selector: (state) => state.bodylanguageController3,
                                                                                        builder: (context, bodylanguageController3) {
                                                                                          return CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: bodylanguageController3, hintText: "lbl_85_good".tr, variant: TextFormFieldVariant.UnderLineGray500, fontStyle: TextFormFieldFontStyle.PoppinsLight10);
                                                                                        })
                                                                                  ]))
                                                                            ])),
                                                                    Padding(
                                                                        padding:
                                                                            getPadding(top: 8),
                                                                        child: RatingBar.builder(
                                                                            initialRating: 3,
                                                                            minRating: 0,
                                                                            direction: Axis.horizontal,
                                                                            allowHalfRating: false,
                                                                            itemSize: getVerticalSize(20),
                                                                            unratedColor: ColorConstant.blueGray100,
                                                                            itemCount: 5,
                                                                            updateOnDrag: true,
                                                                            onRatingUpdate: (rating) {},
                                                                            itemBuilder: (context, _) {
                                                                              return Icon(Icons.star, color: ColorConstant.yellow700);
                                                                            }))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right: 6),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_verbal_behavior"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular14Black900),
                                                                    BlocSelector<
                                                                            ScoreBloc,
                                                                            ScoreState,
                                                                            TextEditingController?>(
                                                                        selector: (state) =>
                                                                            state
                                                                                .bodylanguageController4,
                                                                        builder:
                                                                            (context,
                                                                                bodylanguageController4) {
                                                                          return CustomTextFormField(
                                                                              focusNode: FocusNode(),
                                                                              autofocus: true,
                                                                              controller: bodylanguageController4,
                                                                              hintText: "lbl_85_good".tr,
                                                                              variant: TextFormFieldVariant.UnderLineGray500,
                                                                              fontStyle: TextFormFieldFontStyle.PoppinsLight10,
                                                                              textInputAction: TextInputAction.done);
                                                                        })
                                                                  ])))
                                                    ])))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar1,
                                                      height: getSize(18),
                                                      width: getSize(18),
                                                      margin: getMargin(
                                                          top: 93, bottom: 42)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup,
                                                      height:
                                                          getVerticalSize(154),
                                                      width: getHorizontalSize(
                                                          103),
                                                      margin:
                                                          getMargin(left: 4)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar4,
                                                      height: getSize(18),
                                                      width: getSize(18),
                                                      margin: getMargin(
                                                          top: 130, bottom: 4))
                                                ]))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar2,
                                        height: getSize(15),
                                        width: getSize(15),
                                        alignment: Alignment.topRight,
                                        margin: getMargin(top: 3, right: 92)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar415x15,
                                        height: getSize(15),
                                        width: getSize(15),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 118)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar122x22,
                                        height: getSize(22),
                                        width: getSize(22),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 68, top: 23)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar3,
                                        height: getSize(22),
                                        width: getSize(22),
                                        alignment: Alignment.topRight,
                                        margin: getMargin(top: 61, right: 88))
                                  ])),
                          Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 35),
                              color: ColorConstant.gray900,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: getHorizontalSize(1)),
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Container(
                                  height: getVerticalSize(60),
                                  width: getHorizontalSize(315),
                                  padding: getPadding(
                                      left: 12, top: 13, right: 12, bottom: 13),
                                  decoration: AppDecoration.outline1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: BlocSelector<ScoreBloc,
                                                    ScoreState, bool?>(
                                                selector: (state) =>
                                                    state.isCheckbox,
                                                builder: (context, isCheckbox) {
                                                  return CustomCheckbox(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      text:
                                                          "msg_play_recorded_interview"
                                                              .tr,
                                                      value: isCheckbox,
                                                      fontStyle:
                                                          CheckboxFontStyle
                                                              .RobotoMedium24,
                                                      onChange: (value) {
                                                        context
                                                            .read<ScoreBloc>()
                                                            .add(
                                                                ChangeCheckBoxEvent(
                                                                    value:
                                                                        value));
                                                      });
                                                })),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(22),
                                            width: getSize(22),
                                            alignment: Alignment.centerLeft)
                                      ]))),
                          CustomButton(
                              height: getVerticalSize(49),
                              width: getHorizontalSize(188),
                              text: "lbl_try_again".tr,
                              margin: getMargin(top: 45, bottom: 5),
                              variant: ButtonVariant.OutlineGray600,
                              fontStyle:
                                  ButtonFontStyle.PoppinsMedium16Black90001,
                              onTap: () {
                                onTapTryagain(context);
                              })
                        ])))));
  }

  onTapTryagain(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
