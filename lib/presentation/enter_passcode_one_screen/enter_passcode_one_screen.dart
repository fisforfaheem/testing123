import 'package:faheem_s_application/core/app_export.dart';
import 'package:faheem_s_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterPasscodeOneScreen extends StatelessWidget {
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
                                    text:
                                        "A verification email with a passcode has been send to your registered email \n",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "amarahmed43@gmail.com",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("Enter the 4-digit passcode",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      Padding(
                          padding: getPadding(top: 27),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
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
                                  inactiveColor: ColorConstant.blueGray900,
                                  selectedColor: ColorConstant.blueGray900,
                                  activeColor: ColorConstant.blueGray900))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 24, right: 84),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Send again in",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular16
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))),
                                    Padding(
                                        padding: getPadding(left: 8, bottom: 1),
                                        child: Text("00:54",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold16))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(49),
                          width: getHorizontalSize(188),
                          text: "Verify",
                          margin: getMargin(top: 37)),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 139),
                          child: Text("Terms & Conditions Applied",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Gray500))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
