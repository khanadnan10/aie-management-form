// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class ManagementChairmanSmallCard extends StatelessWidget {
  final String title;
  final String role;
  final String body;
  final String image;

  const ManagementChairmanSmallCard({
    Key? key,
    required this.title,
    required this.role,
    required this.body,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kPurpleLight,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.kPurpleLight,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: Font.managementProfileHeadingTextStyle,
                  ),
                  Utils(height: 6).sizedBox,
                  Text(
                    role,
                    style: Font.formTextStyle,
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
            ),
          ),
        ],
      ),
    );
  }
}
