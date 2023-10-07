import 'package:flutter/material.dart';
import 'package:management_form/feature/form/widgets/custom_text_form_field.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  final List<TextEditingController> _achievementsController = [
    TextEditingController()
  ];
  final GlobalKey<FormState> _achievementsFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (TextEditingController controller in _achievementsController) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addAchievements() {
    setState(() {
      _achievementsController.add(TextEditingController());
    });
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
                key: _achievementsFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Achievements',
                          style: Font.formTextStyle,
                        ),
                        IconButton(
                          onPressed: () {
                            // Adding more facilities when tapped
                            setState(() => _addAchievements());
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                            color: AppColors.kGrey,
                          ),
                        ),
                      ],
                    ),
                    CustomTextFormField(
                      controller: _achievementsController.first,
                      hintText: 'Achievements',
                      validator: (value) {
                        //TODO: Debate club validator
                      },
                    ),
                    Utils().sizedBox,
                    if (_achievementsController.length > 1)
                      for (int i = 1; i < _achievementsController.length; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                              controller: _achievementsController[i],
                              hintText: 'Example',
                              validator: (value) {
                                //TODO: Debate club validator
                              },
                            ),
                            Utils().sizedBox,
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
