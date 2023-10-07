// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:management_form/feature/management_profile/widgets/management_title_body_card.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> contact = [
      {
        'icon': const Icon(
          Icons.phone,
          size: 16.0,
          color: AppColors.kGrey,
        ),
        'detail': '+91 6125689526',
      },
      {
        'icon': const Icon(
          Icons.mail,
          size: 16.0,
          color: AppColors.kGrey,
        ),
        'detail': 'ck3437@gmail.com',
      },
      {
        'icon': const Icon(
          Icons.phone,
          size: 16.0,
          color: AppColors.kGrey,
        ),
        'detail': '+91 44 123 4567',
      },
      {
        'icon': const Icon(
          Icons.phone,
          size: 16.0,
          color: AppColors.kGrey,
        ),
        'detail': '27, Nirman vihar, New Delhi, 110065',
      },
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Utils().sizedBox,
          const ManagementTitleBodyCard(
            title: 'About ',
            body:
                'Love to experiment with new ideas, enjoy the process of discovery. I am very enthuastic to teach new concepts in the field of chemistry.',
          ),
          Utils().sizedBox,
          const BasicInfo(),
          Utils().sizedBox,
          Container(
            // User id card
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColors.kPurpleLight,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'User ID',
                  style: Font.managementProfileHeadingTextStyle,
                ),
                Utils(height: 10).sizedBox,
                const iconDataCard(
                  includeSpace: false,
                  icon: Icon(
                    Icons.account_circle,
                    size: 16.0,
                    color: AppColors.kGrey,
                  ),
                  iconDetail: '15 June 1985',
                ),
              ],
            ),
          ),
          Utils().sizedBox,
          Container(
            // contact card
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColors.kPurpleLight,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'User ID',
                  style: Font.managementProfileHeadingTextStyle,
                ),
                Utils(height: 10).sizedBox,
                ...contact.map((e) {
                  return iconDataCard(
                    includeSpace: true,
                    icon: e['icon'],
                    iconDetail: e['detail'],
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconAndDetailsCard extends StatelessWidget {
  final String title;
  final Icon icon;
  final String iconDetail;
  const IconAndDetailsCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconDetail,
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
          iconDataCard(
            icon: icon,
            iconDetail: iconDetail,
            includeSpace: true,
          ),
        ],
      ),
    );
  }
}

class iconDataCard extends StatelessWidget {
  const iconDataCard({
    Key? key,
    required this.includeSpace,
    required this.icon,
    required this.iconDetail,
  }) : super(key: key);
  final bool includeSpace;
  final Icon icon;
  final String iconDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon, // Icon of the detail
            Utils(width: 5).sizedBox,
            Text(
              iconDetail, // Icon Details
              style: Font.formTextStyle.copyWith(
                color: AppColors.kGrey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        if (includeSpace) Utils().sizedBox,
      ],
    );
  }
}

class BasicInfo extends StatelessWidget {
  const BasicInfo({
    super.key,
  });

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
          const Text(
            'Basic Info',
            style: Font.managementProfileHeadingTextStyle,
          ),
          Utils(height: 10).sizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Established',
                style: Font.formTextStyle.copyWith(
                  color: AppColors.kBlackShade,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '15 June 1985',
                style: Font.formTextStyle.copyWith(
                  color: AppColors.kGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Utils(height: 10).sizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'School code',
                style: Font.formTextStyle.copyWith(
                  color: AppColors.kBlackShade,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '0333',
                style: Font.formTextStyle.copyWith(
                  color: AppColors.kGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
