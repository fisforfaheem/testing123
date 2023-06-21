import 'package:faheem_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.RobotoRomanMedium15:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.RobotoRomanMedium14:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.PoppinsLight10:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray9007c,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBluegray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blueGray900,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack9004c:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineGray500:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray500,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray9001e,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBlack9004c:
        return ColorConstant.blueA400;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray9001e:
        return false;
      case TextFormFieldVariant.OutlineBluegray900:
        return false;
      case TextFormFieldVariant.OutlineBlack9004c:
        return true;
      case TextFormFieldVariant.UnderLineGray500:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT21:
        return getPadding(
          top: 21,
          right: 21,
          bottom: 21,
        );
      case TextFormFieldPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      default:
        return getPadding(
          left: 14,
          top: 18,
          right: 14,
          bottom: 18,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder6,
}

enum TextFormFieldPadding {
  PaddingT18,
  PaddingT21,
  PaddingAll15,
}

enum TextFormFieldVariant {
  None,
  OutlineGray9001e,
  OutlineBluegray900,
  OutlineBlack9004c,
  UnderLineGray500,
}

enum TextFormFieldFontStyle {
  RobotoRegular16,
  RobotoRomanMedium15,
  RobotoRomanMedium14,
  PoppinsLight10,
}
