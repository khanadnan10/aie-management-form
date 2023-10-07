// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:management_form/feature/management_profile/widgets/faculty_profile_card.dart';
import 'package:management_form/utils/utils.dart';

class Faculty extends StatelessWidget {
  const Faculty({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Utils().sizedBox,
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return const FacultyProfileCard(
                  title: 'Neetu Goel',
                  subject: 'English, Hindi',
                  classes: 'Class III, IV',
                  image: 'images/Rectangle 1190.png',
                );
              },
            ),
          ),
          Utils().sizedBox,
        ],
      ),
    );
  }
}
