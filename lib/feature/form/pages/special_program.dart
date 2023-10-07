import 'package:flutter/material.dart';
import 'package:management_form/feature/form/widgets/custom_text_form_field.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class SpecialProgram extends StatefulWidget {
  const SpecialProgram({Key? key}) : super(key: key);

  @override
  State<SpecialProgram> createState() =>
      _SpecialProgramState();
}

class _SpecialProgramState extends State<SpecialProgram> {
  final List<TextEditingController> _specialProgramController = [
    TextEditingController()
  ];
  final GlobalKey<FormState> _specialProgramFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (TextEditingController controller in _specialProgramController) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addNewProgram() {
    setState(() {
      _specialProgramController.add(TextEditingController());
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
                key: _specialProgramFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Special programs',
                          style: Font.formTextStyle,
                        ),
                        IconButton(
                          onPressed: () {
                            // Adding more facilities when tapped
                            setState(() => _addNewProgram());
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
                      controller: _specialProgramController.first,
                      hintText: 'Advanced Placement (AP) courses',
                      validator: (value) {
                        //TODO: Debate club validator
                      },
                    ),
                    Utils().sizedBox,
                    if (_specialProgramController.length > 1)
                      for (int i = 1; i < _specialProgramController.length; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                              controller: _specialProgramController[i],
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
