import 'package:flutter/material.dart';
import 'package:management_form/feature/management_profile/widgets/simple_text_card.dart';
import 'package:management_form/utils/utils.dart';

class Facility extends StatelessWidget {
  const Facility({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    List<String> facility = [
      'Modern classrooms with interactive technology',
      'Science and computer labs',
      'Library and media center',
      'Gymnasium and sports fields',
      'Music and arts studios',
    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Utils().sizedBox,
          const Text(
            'Available facilities',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          ...facility.map((e) {
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
