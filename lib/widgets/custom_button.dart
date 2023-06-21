import 'package:faheem_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case ButtonPadding.PaddingT1:
        return getPadding(
          top: 1,
          bottom: 1,
        );
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      case ButtonPadding.PaddingT21:
        return getPadding(
          top: 21,
          right: 21,
          bottom: 21,
        );
      case ButtonPadding.PaddingT6:
        return getPadding(
          top: 6,
          bottom: 6,
        );
      case ButtonPadding.PaddingT18:
        return getPadding(
          left: 16,
          top: 18,
          right: 16,
          bottom: 18,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.OutlineGray600:
      case ButtonVariant.OutlineCyanA400:
      case ButtonVariant.OutlineBluegray900:
      case ButtonVariant.OutlineGray9001e:
        return null;
      default:
        return ColorConstant.cyanA400;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray600:
        return BorderSide(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineCyanA400:
        return BorderSide(
          color: ColorConstant.cyanA400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray900:
        return BorderSide(
          color: ColorConstant.blueGray900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray9001e:
        return BorderSide(
          color: ColorConstant.gray9001e,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillCyanA400:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium16Black90001:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium16Gray500:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRomanMedium15:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsRegular16:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRegular16:
        return TextStyle(
          color: ColorConstant.gray9007c,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder24,
  CircleBorder20,
  CircleBorder16,
  RoundedBorder6,
}

enum ButtonPadding {
  PaddingAll12,
  PaddingAll9,
  PaddingT1,
  PaddingAll3,
  PaddingT21,
  PaddingT6,
  PaddingT18,
}

enum ButtonVariant {
  FillCyanA400,
  OutlineWhiteA700,
  OutlineGray600,
  OutlineCyanA400,
  OutlineBluegray900,
  OutlineGray9001e,
}

enum ButtonFontStyle {
  PoppinsMedium16,
  PoppinsMedium14,
  RobotoMedium14,
  PoppinsMedium16Black90001,
  PoppinsMedium16Gray500,
  RobotoRomanMedium15,
  PoppinsRegular16,
  RobotoRegular16,
}
