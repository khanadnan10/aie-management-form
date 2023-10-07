// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:management_form/feature/management_profile/widgets/management_title_body_card.dart';
import 'package:management_form/utils/utils.dart';

class VisionMission extends StatelessWidget {
  const VisionMission({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Utils().sizedBox,
          const ManagementTitleBodyCard(
            title: 'Our motto',
            body: '“Inspiring Excellence, Shaping Futures.”',
          ),
          Utils().sizedBox,
          const ManagementTitleBodyCard(
            title: 'Our vision',
            body:
                'Maplewood High School is committed to providing anurturing and challenging educational environmentthat empowers students to excel academically,socially, and personally, preparing them to becomeresponsible and productive citizens.',
          ),
          Utils().sizedBox,
          const ManagementTitleBodyCard(
            title: 'Our vision',
            body:
                "Maplewood High School is committed to providing anurturing and challenging educational environmentthat empowers students to excel academically,socially, and personally, preparing them to becomeresponsible and productive citizens.",
          ),
          Utils().sizedBox,
        ],
      ),
    );
  }
}
