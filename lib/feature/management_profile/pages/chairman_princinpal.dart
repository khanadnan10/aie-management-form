import 'package:flutter/material.dart';
import 'package:management_form/feature/management_profile/widgets/management_chairman_small_profile_card.dart';
import 'package:management_form/utils/utils.dart';

class ChairmanPrinicipal extends StatelessWidget {
  const ChairmanPrinicipal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Utils().sizedBox,
          const ManagementChairmanSmallCard(
            title: 'Daniel Rich',
            role: 'Chairman',
            image: 'images/Rectangle 1188.png',
            body:
                'Dedicated school chairman fostering excellence. Dedicated school chairman fostering excellence.',
          ),
          Utils().sizedBox,
          const ManagementChairmanSmallCard(
            title: 'Jake Rich',
            role: 'Principal',
            image: 'images/Rectangle 1189.png',
            body:
                'Dedicated school chairman fostering excellence. Dedicated school chairman fostering excellence.',
          ),
        ],
      ),
    );
  }
}
