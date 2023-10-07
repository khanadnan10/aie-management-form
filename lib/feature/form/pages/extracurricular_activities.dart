import 'package:flutter/material.dart';
import 'package:management_form/feature/form/widgets/custom_text_form_field.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class ExtracurricularActivities extends StatefulWidget {
  const ExtracurricularActivities({Key? key}) : super(key: key);

  @override
  State<ExtracurricularActivities> createState() =>
      _ExtracurricularActivitiesState();
}

class _ExtracurricularActivitiesState extends State<ExtracurricularActivities> {
  final List<TextEditingController> _activityController = [
    TextEditingController()
  ];
  final GlobalKey<FormState> _facilitiesFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (TextEditingController controller in _activityController) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addNewActivity() {
    setState(() {
      _activityController.add(TextEditingController());
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
                key: _facilitiesFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Extracurricular activities',
                          style: Font.formTextStyle,
                        ),
                        IconButton(
                          onPressed: () {
                            // Adding more facilities when tapped
                            setState(() => _addNewActivity());
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
                      controller: _activityController.first,
                      hintText: 'Debate club',
                      validator: (value) {
                        //TODO: Debate club validator
                      },
                    ),
                    Utils().sizedBox,
                    if (_activityController.length > 1)
                      for (int i = 1; i < _activityController.length; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                              controller: _activityController[i],
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
