import 'bloc/enter_passcode_bloc.dart';
import 'models/enter_passcode_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:faheem_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterPasscodeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<EnterPasscodeBloc>(
        create: (context) => EnterPasscodeBloc(
            EnterPasscodeState(enterPasscodeModelObj: EnterPasscodeModel()))
          ..add(EnterPasscodeInitialEvent()),
        child: EnterPasscodeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 52, right: 64, bottom: 139),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(312),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_a_verification_email2"
                                                  .tr,
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "msg_amarahmed43_gmail_com"
                                                  .tr,
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.center)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Text("msg_enter_the_4_digit".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16)),
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 27, right: 19),
                                    child: BlocSelector<
                                            EnterPasscodeBloc,
                                            EnterPasscodeState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.otpController,
                                        builder: (context, otpController) {
                                          return PinCodeTextField(
                                              appContext: context,
                                              controller: otpController,
                                              length: 4,
                                              obscureText: false,
                                              obscuringCharacter: '*',
                                              keyboardType:
                                                  TextInputType.number,
                                              autoDismissKeyboard: true,
                                              enableActiveFill: true,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              onChanged: (value) {
                                                otpController?.text = value;
                                              },
                                              pinTheme: PinTheme(
                                                  fieldHeight:
                                                      getHorizontalSize(60),
                                                  fieldWidth:
                                                      getHorizontalSize(58),
                                                  shape: PinCodeFieldShape.box,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(6)),
                                                  selectedFillColor:
                                                      ColorConstant.fromHex(
                                                          "#1212121D"),
                                                  activeFillColor:
                                                      ColorConstant.fromHex(
                                                          "#1212121D"),
                                                  inactiveFillColor:
                                                      ColorConstant.fromHex(
                                                          "#1212121D"),
                                                  inactiveColor:
                                                      ColorConstant.blueGray900,
                                                  selectedColor:
                                                      ColorConstant.blueGray900,
                                                  activeColor: ColorConstant
                                                      .blueGray900));
                                        })),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(top: 24, right: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "lbl_send_again_in".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular16
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, bottom: 1),
                                                  child: Text("lbl_00_54".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold16))
                                            ]))),
                                CustomButton(
                                    height: getVerticalSize(49),
                                    width: getHorizontalSize(188),
                                    text: "lbl_verify".tr,
                                    margin: getMargin(top: 37)),
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(222),
                                    margin: getMargin(top: 111),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  "msg_terms_conditions".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular16Gray500)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  "msg_terms_conditions".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular16Gray500))
                                        ]))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgArtboard1copy,
                      height: getSize(128),
                      width: getSize(128),
                      alignment: Alignment.topCenter,
                      margin: getMargin(top: 110)),
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowleft,
                      height: getSize(40),
                      width: getSize(40),
                      alignment: Alignment.topLeft,
                      margin: getMargin(left: 25, top: 40),
                      onTap: () {
                        onTapImgArrowleft(context);
                      }),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse72,
                      height: getVerticalSize(155),
                      width: getHorizontalSize(242),
                      alignment: Alignment.topRight),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: getMargin(top: 40),
                          padding: getPadding(
                              left: 43, top: 71, right: 43, bottom: 71),
                          decoration: AppDecoration.fillWhiteA700cc.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                BlocSelector<
                                        EnterPasscodeBloc,
                                        EnterPasscodeState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.verifiedController,
                                    builder: (context, verifiedController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          autofocus: true,
                                          controller: verifiedController,
                                          hintText: "lbl_verified".tr,
                                          variant: TextFormFieldVariant
                                              .OutlineBlack9004c,
                                          padding:
                                              TextFormFieldPadding.PaddingAll15,
                                          fontStyle: TextFormFieldFontStyle
                                              .RobotoRomanMedium14,
                                          textInputAction:
                                              TextInputAction.done);
                                    })
                              ])))
                ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
