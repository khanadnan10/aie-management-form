// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:management_form/utils/colors.dart';

enum SuffixIconType { none, dropDown, datePicker }

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  // final bool showDatePickerIcon;
  final List<String>? dropdownOptions;
  final EdgeInsetsGeometry contentPadding;
  final TextInputType keyboardType;
  final int maxLines;
  final SuffixIconType suffixIconType;
  const CustomTextFormField({
    Key? key,
    // this.showDatePickerIcon = false,
    required this.controller,
    required this.hintText,
    this.validator,
    this.dropdownOptions,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 20),
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.suffixIconType = SuffixIconType.none,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      readOnly: widget.suffixIconType == SuffixIconType.dropDown ? true : false,
      decoration: InputDecoration(
        fillColor: AppColors.kPurpleLight,
        filled: true,
        suffixIcon: widget.suffixIconType == SuffixIconType.datePicker
            ? IconButton(
                icon: const Icon(
                  Icons.calendar_today,
                  size: 20.0,
                ),
                onPressed: () => _selectDate(context),
              )
            : widget.suffixIconType == SuffixIconType.dropDown
                ? PopupMenuButton<String>(
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 30.0,
                    ),
                    itemBuilder: (BuildContext context) {
                      return widget.dropdownOptions!.map((String option) {
                        return PopupMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList();
                    },
                    onSelected: (String? selectedOption) {
                      if (selectedOption != null) {
                        widget.controller.text = selectedOption;
                      }
                    },
                  )
                : null,
        suffixIconColor: AppColors.kGrey,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.0),
        ),
        contentPadding: widget.contentPadding,
        hintStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: AppColors.kGreyInActive,
        ),
        hintText: widget.hintText,
      ),
      validator: widget.validator,
    );
  }
}
