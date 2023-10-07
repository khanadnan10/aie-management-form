import 'package:flutter/material.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class FacultyProfileCard extends StatelessWidget {
  final String title;
  final String subject;
  final String classes;
  final String image;

  const FacultyProfileCard({
    Key? key,
    required this.title,
    required this.subject,
    required this.classes,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.kPurpleLight,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Utils().sizedBox,
          Text(
            title,
            style: Font.managementProfileHeadingTextStyle,
          ),
          Utils(height: 10).sizedBox,
          Text(
            subject,
            style: Font.formTextStyle.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.kGrey,
            ),
          ),
          Utils(height: 10).sizedBox,
          Text(
            classes,
            style: Font.managementProfileBodyTextStyle.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: AppColors.kGrey,
            ),
          )
        ],
      ),
    );
  }
}
