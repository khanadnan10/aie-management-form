import 'package:flutter/material.dart';
import 'package:management_form/feature/management_profile/widgets/simple_text_card.dart';
import 'package:management_form/utils/utils.dart';

class Achievement extends StatelessWidget {
  const Achievement({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    List<String> achievements = [
      'Consistently high graduation rates',
      'State champions in debate for the past 3 years',
      'National Merit Scholars',
    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Utils().sizedBox,
          const Text(
            'Achievements',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          ...achievements.map((e) {
            return Column(
              children: [
                Utils().sizedBox,
                SimpleTextCard(text: e),
              ],
            );
          }),
        ],
      ),
    );
  }
}
