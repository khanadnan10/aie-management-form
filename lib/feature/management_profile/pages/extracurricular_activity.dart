import 'package:flutter/material.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class ExtracurricularActivityManagemetProfile extends StatelessWidget {
  const ExtracurricularActivityManagemetProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    List<String> extracurricularActivity = [
      'Student council ',
      'Debate club',
      'Chess club',
      'Drama and theater club',
      'Sports teams (basketball, soccer, volleyball, etc.) '
    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Utils().sizedBox,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: AppColors.kPurpleLight,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Special Programs',
                  style: Font.managementProfileHeadingTextStyle,
                ),
                Utils(height: 20).sizedBox,
                for (int i = 0; i < extracurricularActivity.length; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        extracurricularActivity[i],
                        style: Font.managementProfileBodyTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      if (i < extracurricularActivity.length - 1)
                        const Divider(),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
