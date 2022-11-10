import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

class CustomTextFiel extends StatelessWidget {
  const CustomTextFiel(
      {super.key,
      this.controller,
      this.hintText,
      this.readOnly,
      this.textAlign,
      this.keyboardType,
      this.prefixTExt,
      this.suffixIcon,
      this.onChanged,
      this.onTap});

  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixTExt;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onChanged: onChanged,
      decoration: InputDecoration(

        isDense: true,
        prefixText: prefixTExt,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: context.theme.greyColor),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Coloors.greenDark)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Coloors.greenDark, width: 2)),
      ),
    );
  }
}
