// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:management_form/utils/colors.dart';

class CustomStepper extends StatelessWidget {
  final int index;
  final int currentIndex;
  final VoidCallback onTap;
  final String text;

  bool isLast;
  CustomStepper({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.text,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLast
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //this is the bubble
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: index == currentIndex
                            ? AppColors.kPurple
                            : Colors.transparent,
                        border: Border.all(
                          color: AppColors.kPurple,
                        ),
                      ),
                      child: index < currentIndex
                          ? const Icon(
                              Icons.check,
                              size: 10,
                              color: AppColors.kWhite,
                            )
                          : null,
                    ),
                  ),
                  Container(
                    height: 2,
                    color: AppColors.kPurple,
                  ),
                ],
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                softWrap: true,
                // maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: index == currentIndex
                    ? const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 8.0,
                        color: AppColors.kGrey,
                      )
                    : const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 8.0,
                        color: AppColors.kGreyInActive,
                      ),
              ),
            ],
          )
        : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: index <= currentIndex
                              ? AppColors.kPurple
                              : Colors.transparent,
                          border: Border.all(
                            color: AppColors.kPurple,
                          ),
                        ),
                        child: index < currentIndex
                            ? const Icon(
                                Icons.check,
                                size: 10,
                                color: AppColors.kWhite,
                              )
                            : null,
                      ),
                    ),
                    const Expanded(
                      child: DottedLine(
                        dashColor: AppColors.kPurple,
                      ),
                    ),
                  ],
                ),
                Text(
                  text,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: index <= currentIndex
                      ? const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 8.0,
                          color: AppColors.kGrey,
                        )
                      : const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 8.0,
                          color: AppColors.kGreyInActive,
                        ),
                ),
              ],
            ),
          );
  }
}
