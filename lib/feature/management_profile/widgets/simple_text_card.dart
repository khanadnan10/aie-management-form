
import 'package:flutter/material.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';

class SimpleTextCard extends StatelessWidget {
  final String text;
  const SimpleTextCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: AppColors.kPurpleLight,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text,
        style: Font.managementProfileBodyTextStyle.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
