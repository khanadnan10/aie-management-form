import 'package:flutter/material.dart';
import 'package:management_form/feature/form/widgets/custom_text_form_field.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class ChairmanPrincipleInfo extends StatefulWidget {
  const ChairmanPrincipleInfo({super.key});

  @override
  State<ChairmanPrincipleInfo> createState() => _ChairmanPrincipleInfoState();
}

class _ChairmanPrincipleInfoState extends State<ChairmanPrincipleInfo> {
  final GlobalKey _chairmanPrincipleInfoFormKey = GlobalKey<FormState>();

  final TextEditingController _chairmanNameController = TextEditingController();
  final TextEditingController _principleNameController =
      TextEditingController();

  @override
  void dispose() {
    _chairmanNameController.dispose();
    _principleNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _chairmanPrincipleInfoFormKey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Chairman',
                          style: Font.formTextStyle,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              //TODO: Add Image for chairman
                            },
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                color: AppColors.kPurpleLight,
                              ),
                              child: const Column(
                                children: [
                                  Icon(Icons.add),
                                  Text(
                                    'Add Image',
                                    style: Font.formTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Utils(height: 20).sizedBox,
                        CustomTextFormField(
                          controller: _chairmanNameController,
                          hintText: 'Name',
                          validator: (value) {
                            //TODO: chairman name validator
                          },
                        ),
                        Utils().sizedBox,
                        const Text(
                          'Principle',
                          style: Font.formTextStyle,
                        ),
                        Utils().sizedBox,
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              //TODO: Add Image for principle
                            },
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                color: AppColors.kPurpleLight,
                              ),
                              child: const Column(
                                children: [
                                  Icon(Icons.add),
                                  Text(
                                    'Add Image',
                                    style: Font.formTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Utils().sizedBox,
                        CustomTextFormField(
                          controller: _principleNameController,
                          hintText: 'Name',
                          validator: (value) {
                            //TODO: Principle name validator
                          },
                        ),
                        Utils(height: 30).sizedBox,
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //TODO: Next Step after form validation
              // Use State Management for the stepper updation
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.kPurple,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: Text(
                  'Next',
                  style: Font.formTextStyle.copyWith(
                    color: AppColors.kWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
