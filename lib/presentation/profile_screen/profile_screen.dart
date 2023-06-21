import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/core/utils/validation_functions.dart';
import 'package:faheem_s_application/presentation/home_page/home_page.dart';
import 'package:faheem_s_application/widgets/custom_bottom_bar.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(right: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(286),
                                        width: getHorizontalSize(350),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(210),
                                                      width: getHorizontalSize(
                                                          214),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgArtboard12,
                                                                height:
                                                                    getVerticalSize(
                                                                        210),
                                                                width:
                                                                    getHorizontalSize(
                                                                        214),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleft,
                                                                height:
                                                                    getSize(40),
                                                                width:
                                                                    getSize(40),
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            25,
                                                                        top:
                                                                            40),
                                                                onTap: () {
                                                                  onTapImgArrowleft(
                                                                      context);
                                                                })
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 98, right: 29),
                                                      child: Text(
                                                          "msg_please_fill_your"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular20Gray90001))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                      "msg_we_re_excited_to2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14Gray60001)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 31),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                color:
                                                                    ColorConstant
                                                                        .teal100,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder45),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            92),
                                                                        width: getSize(
                                                                            92),
                                                                        padding: getPadding(
                                                                            left:
                                                                                18,
                                                                            top:
                                                                                16,
                                                                            right:
                                                                                18,
                                                                            bottom:
                                                                                16),
                                                                        decoration: AppDecoration
                                                                            .fillTeal100
                                                                            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder45),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgUserBlack90001,
                                                                              height: getSize(56),
                                                                              width: getSize(56),
                                                                              alignment: Alignment.topCenter)
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            28,
                                                                        top: 40,
                                                                        bottom:
                                                                            32),
                                                                child: Text(
                                                                    "lbl_upload_photo"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanSemiBold16
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.underline)))
                                                          ])))
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCloseBlack90001,
                                        height: getSize(40),
                                        width: getSize(40),
                                        margin: getMargin(top: 40, bottom: 206))
                                  ]),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 20),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.gray400,
                                          indent: getHorizontalSize(67),
                                          endIndent: getHorizontalSize(42)))),
                              Padding(
                                  padding: getPadding(left: 64, top: 22),
                                  child: Text("lbl_full_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.fullnameoneController,
                                  builder: (context, fullnameoneController) {
                                    return CustomTextFormField(
                                        width: getHorizontalSize(245),
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: fullnameoneController,
                                        hintText: "msg_please_enter_your2".tr,
                                        margin: getMargin(left: 64, top: 9),
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "Please enter valid text";
                                          }
                                          return null;
                                        });
                                  }),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("lbl_gender".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(left: 64, top: 9),
                                  child: Row(children: [
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(69),
                                        text: "lbl_male".tr,
                                        variant: ButtonVariant.OutlineGray9001e,
                                        shape: ButtonShape.RoundedBorder6,
                                        padding: ButtonPadding.PaddingT18,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRegular16),
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(87),
                                        text: "lbl_female".tr,
                                        margin: getMargin(left: 7),
                                        variant: ButtonVariant.OutlineGray9001e,
                                        shape: ButtonShape.RoundedBorder6,
                                        padding: ButtonPadding.PaddingT18,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRegular16)
                                  ])),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("lbl_date_of_birth".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.dateofbirthController,
                                  builder: (context, dateofbirthController) {
                                    return CustomTextFormField(
                                        width: getHorizontalSize(245),
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: dateofbirthController,
                                        hintText: "lbl_dd_mm_yyyy".tr,
                                        margin: getMargin(left: 64, top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("lbl_phone_no".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) => state.phoneController,
                                  builder: (context, phoneController) {
                                    return CustomTextFormField(
                                        width: getHorizontalSize(245),
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: phoneController,
                                        hintText: "msg_please_enter_your3".tr,
                                        margin: getMargin(left: 64, top: 9),
                                        textInputType: TextInputType.phone,
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        });
                                  }),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("lbl_email".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) => state.emailoneController,
                                  builder: (context, emailoneController) {
                                    return CustomTextFormField(
                                        width: getHorizontalSize(245),
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: emailoneController,
                                        hintText: "msg_please_enter_your4".tr,
                                        margin: getMargin(left: 64, top: 9),
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        });
                                  }),
                              Padding(
                                  padding: getPadding(left: 64, top: 13),
                                  child: Text("lbl_education".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayerController,
                                  builder: (context, statelayerController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayerController,
                                        hintText: "msg_please_enter_your5".tr,
                                        margin: getMargin(
                                            left: 64, top: 9, right: 57),
                                        alignment: Alignment.center);
                                  }),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayeroneController,
                                  builder: (context, statelayeroneController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayeroneController,
                                        hintText: "msg_please_enter_your5".tr,
                                        margin: getMargin(
                                            left: 64, top: 5, right: 57),
                                        alignment: Alignment.center);
                                  }),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("lbl_add_more".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              Container(
                                  width: getHorizontalSize(91),
                                  margin: getMargin(left: 64, top: 5),
                                  child: Text("lbl_experience".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayertwoController,
                                  builder: (context, statelayertwoController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayertwoController,
                                        hintText: "msg_please_enter_your6".tr,
                                        margin: getMargin(left: 64, right: 57),
                                        alignment: Alignment.center);
                                  }),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayerController1,
                                  builder: (context, statelayerController1) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayerController1,
                                        hintText: "msg_please_enter_your6".tr,
                                        margin: getMargin(
                                            left: 64, top: 5, right: 57),
                                        alignment: Alignment.center);
                                  }),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("lbl_add_more".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              Container(
                                  width: getHorizontalSize(91),
                                  margin: getMargin(left: 64, top: 5),
                                  child: Text("lbl_skills".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayerfourController,
                                  builder: (context, statelayerfourController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayerfourController,
                                        hintText: "msg_please_enter_your6".tr,
                                        margin: getMargin(left: 64, right: 57),
                                        alignment: Alignment.center);
                                  }),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayerfiveController,
                                  builder: (context, statelayerfiveController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayerfiveController,
                                        hintText: "msg_please_enter_your6".tr,
                                        margin: getMargin(
                                            left: 64, top: 5, right: 57),
                                        alignment: Alignment.center);
                                  }),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("lbl_add_more".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              Container(
                                  width: getHorizontalSize(181),
                                  margin: getMargin(left: 64, top: 5),
                                  child: Text("msg_certifications".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayersixController,
                                  builder: (context, statelayersixController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayersixController,
                                        hintText: "msg_please_enter_your6".tr,
                                        margin: getMargin(left: 64, right: 57),
                                        alignment: Alignment.center);
                                  }),
                              BlocSelector<ProfileBloc, ProfileState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.statelayerController2,
                                  builder: (context, statelayerController2) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: statelayerController2,
                                        hintText: "msg_please_enter_your6".tr,
                                        margin: getMargin(
                                            left: 64, top: 5, right: 57),
                                        textInputAction: TextInputAction.done,
                                        alignment: Alignment.center);
                                  }),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 5, right: 160),
                                      child: Text("lbl_add_more".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular10BlueA40001
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              CustomButton(
                                  height: getVerticalSize(49),
                                  width: getHorizontalSize(188),
                                  text: "lbl_save".tr,
                                  margin: getMargin(top: 42, right: 96),
                                  onTap: () {
                                    onTapSave(context);
                                  },
                                  alignment: Alignment.centerRight),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: getHorizontalSize(192),
                                      margin: getMargin(top: 49, right: 94),
                                      child: Text("msg_all_rights_reserved".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtPoppinsRegular10)))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Interview:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
