import 'package:flutter/material.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class ManagementTitleBodyCard extends StatelessWidget {
  final String title;
  final String body;
  const ManagementTitleBodyCard({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.kPurpleLight,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: Font.managementProfileHeadingTextStyle,
          ),
          Utils(height: 10).sizedBox,
          Text(
            body,
            style: Font.managementProfileBodyTextStyle.copyWith(
              color: AppColors.kGrey,
            ),
          ),
        ],
      ),
    );
  }
}
