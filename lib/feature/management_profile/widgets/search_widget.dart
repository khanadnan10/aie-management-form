import 'package:flutter/material.dart';
import 'package:management_form/utils/colors.dart';

class SearchTextField extends StatelessWidget {
  final Color fillColor;
  final Color prefixIconColor;
  final Color borderColor;
  final String hintText;
  final Function(String?) onChanged;
  final bool activeSuffixIcon; // for later use in other components
  const SearchTextField({
    Key? key,
    this.fillColor = Colors.white,
    this.prefixIconColor = const Color(0xff9163D7),
    this.borderColor = const Color(0xff9163D7),
    required this.hintText,
    required this.onChanged,
    this.activeSuffixIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.text,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(40.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40.0),
        ),
        filled: true,
        fillColor: fillColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          size: 28,
          color: prefixIconColor,
        ),
        suffixIcon: activeSuffixIcon == true
            ? const Icon(
                Icons.arrow_drop_down_rounded,
                size: 48,
                color: AppColors.kPurple,
              )
            : null,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.kGrey,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
