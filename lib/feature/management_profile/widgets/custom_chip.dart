
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CustomChip extends StatelessWidget {
  final int index;
  final int currentIndex;
  final VoidCallback onTap;
  final String text;
  const CustomChip({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: index == currentIndex ? AppColors.kPurple : AppColors.kWhite,
          border: Border.all(
            width: 1,
            color: index == currentIndex
                ? AppColors.kPurple
                : AppColors.kGreyInActive,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: index == currentIndex
                ? AppColors.kWhite
                : AppColors.kGreyInActive,
          ),
        ),
      ),
    );
  }
}
