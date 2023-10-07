import 'package:flutter/material.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/utils.dart';

class ProfileIdCard extends StatelessWidget {
  final String title;
  // final String subTitle;
  final String className;
  final Function() onCall;
  final Function() onMessage;
  const ProfileIdCard({
    Key? key,
    required this.title,
    // required this.subTitle,
    required this.className,
    required this.onCall,
    required this.onMessage,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppColors.kPurpleLight,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                size: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  height: 150,
                  width: 150,
                  padding: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: AppColors.kPurple,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('images/Ellipse 430.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 3,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Utils(height: 2).sizedBox,
                    Text(
                      className,
                      style: const TextStyle(
                        color: AppColors.kGrey,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Utils(width: 8).sizedBox,
                    Row(
                      children: [
                        InkWell(
                          onTap: onCall,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.kPurple,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: const Icon(
                              Icons.call,
                              color: AppColors.kWhite,
                            ),
                          ),
                        ),
                        Utils(width: 16).sizedBox,
                        InkWell(
                          onTap: onMessage,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              border: const Border.fromBorderSide(
                                BorderSide(
                                  width: 1,
                                  color: AppColors.kPurple,
                                ),
                              ),
                            ),
                            child: const Icon(
                              Icons.messenger_rounded,
                              color: AppColors.kPurple,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
