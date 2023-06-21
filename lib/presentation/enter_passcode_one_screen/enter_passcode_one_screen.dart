import 'bloc/enter_passcode_one_bloc.dart';
import 'models/enter_passcode_one_model.dart';
import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterPasscodeOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<EnterPasscodeOneBloc>(
        create: (context) => EnterPasscodeOneBloc(EnterPasscodeOneState(
            enterPasscodeOneModelObj: EnterPasscodeOneModel()))
          ..add(EnterPasscodeOneInitialEvent()),
        child: EnterPasscodeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 25),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getSize(40),
                                        width: getSize(40),
                                        margin: getMargin(top: 40, bottom: 158),
                                        onTap: () {
                                          onTapImgArrowleft(context);
                                        }),
                                    Container(
                                        height: getVerticalSize(238),
                                        width: getHorizontalSize(279),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArtboard1copy,
                                                  height: getSize(128),
                                                  width: getSize(128),
                                                  alignment:
                                                      Alignment.bottomLeft),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse7155x242,
                                                  height: getVerticalSize(155),
                                                  width: getHorizontalSize(242),
                                                  alignment: Alignment.topRight)
                                            ]))
                                  ]))),
                      Container(
                          width: getHorizontalSize(312),
                          margin: getMargin(left: 56, top: 66, right: 60),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_a_verification_email2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "msg_amarahmed43_gmail_com".tr,
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
                          padding: getPadding(top: 27),
                          child: BlocSelector<
                                  EnterPasscodeOneBloc,
                                  EnterPasscodeOneState,
                                  TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return PinCodeTextField(
                                    appContext: context,
                                    controller: otpController,
                                    length: 4,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: true,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    },
                                    pinTheme: PinTheme(
                                        fieldHeight: getHorizontalSize(60),
                                        fieldWidth: getHorizontalSize(58),
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6)),
                                        selectedFillColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        activeFillColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        inactiveFillColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        inactiveColor:
                                            ColorConstant.blueGray900,
                                        selectedColor:
                                            ColorConstant.blueGray900,
                                        activeColor:
                                            ColorConstant.blueGray900));
                              })),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 24, right: 84),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_send_again_in".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular16
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))),
                                    Padding(
                                        padding: getPadding(left: 8, bottom: 1),
                                        child: Text("lbl_00_54".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold16))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(49),
                          width: getHorizontalSize(188),
                          text: "lbl_verify".tr,
                          margin: getMargin(top: 37)),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 139),
                          child: Text("msg_terms_conditions".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Gray500))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
