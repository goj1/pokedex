import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:pokedex/shared/ui/loading_indicators/loading_indicator.dart';
import 'package:pokedex/shared/util/enums/core_enum.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final Widget? prefix;
  final double? fontSize;
  final IconData? sufixIcon;
  final Function()? onPressedSufixIconButtom;
  final Function(String value)? onChanged;
  final Function(String text)? onSubmit;
  final TextInputType? keyboardType;
  final bool? obscuredText;
  final String? obscuredCharacter;
  final List<TextInputFormatter>? formatters;
  final String? messageValidation;
  final String? sufixMessage;
  final String? sufixMessageImage;
  final VoidCallback? action;
  final CoreEnum? typeSufixAction;
  final String? helperText;
  final int? maxlines;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;
  final double? topLeftBorder;
  final double? topRightBorder;
  final double? bottomLeftBorder;
  final double? bottomRightBorder;
  final double? iconSize;
  final bool? filled;
  final Color? fillColor;
  final Color? textColor;
  final bool? autocorrect;
  final bool? loading;

  const CustomTextFormField({
    this.controller,
    this.label,
    this.hint,
    this.prefix,
    this.sufixIcon,
    this.fontSize,
    this.onPressedSufixIconButtom,
    this.onChanged,
    this.onSubmit,
    this.keyboardType,
    this.obscuredText,
    this.obscuredCharacter,
    this.formatters,
    this.messageValidation,
    this.sufixMessage,
    this.sufixMessageImage,
    this.action,
    this.typeSufixAction,
    this.helperText,
    this.maxlines,
    this.contentPadding,
    this.borderColor,
    this.topLeftBorder,
    this.topRightBorder,
    this.bottomLeftBorder,
    this.bottomRightBorder,
    this.iconSize,
    this.filled,
    this.fillColor,
    this.textColor,
    this.autocorrect,
    this.loading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: formatters,
      cursorColor: AppColors.primary,
      minLines: 1,
      maxLines: maxlines,
      decoration: InputDecoration(
        labelText: label,
        filled: filled,
        fillColor: fillColor,
        hintText: hint,
        helperText: helperText,
        prefixIcon: prefix,
        contentPadding: contentPadding,
        enabled: true,
        labelStyle: TextStyle(
          color: AppColors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: IconButton(
            icon: Visibility(
              visible: sufixIcon != null,
              child: loading != null && loading == true
                  ? LoadingIndicator(
                      size: CoreEnum.small,
                      color: AppColors.primary,
                      backgroundColor: AppColors.white,
                    )
                  : Material(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Icon(
                          sufixIcon,
                          size: iconSize ?? 32.0,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
            ),
            onPressed: action),
        border: const OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
      obscureText: obscuredText ?? false,
      obscuringCharacter: obscuredCharacter ?? '•',
      autocorrect: autocorrect != null && autocorrect!,
      onSubmitted: onSubmit,
      style: TextStyle(
        fontSize: fontSize ?? 16.0,
        color: textColor,
      ),
      onChanged: onChanged,
    );
  }
}
