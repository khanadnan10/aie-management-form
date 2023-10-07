import 'package:flutter/material.dart';
import 'package:management_form/feature/form/widgets/custom_text_form_field.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class Facilities extends StatefulWidget {
  const Facilities({Key? key}) : super(key: key);

  @override
  State<Facilities> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  final List<TextEditingController> _facilitiesController = [
    TextEditingController()
  ];
  final GlobalKey<FormState> _facilitiesFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (TextEditingController controller in _facilitiesController) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addNewFacility() {
    setState(() {
      _facilitiesController.add(TextEditingController());
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
                          'Facilities',
                          style: Font.formTextStyle,
                        ),
                        IconButton(
                          onPressed: () {
                            // Adding more facilities when tapped
                            setState(() => _addNewFacility());
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
                      controller: _facilitiesController.first,
                      hintText: 'Science and computer labs',
                      validator: (value) {
                        //TODO: facility validator
                      },
                    ),
                    Utils().sizedBox,
                    if (_facilitiesController.length > 1)
                      for (int i = 1; i < _facilitiesController.length; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                              controller: _facilitiesController[i],
                              hintText: 'Example',
                              validator: (value) {
                                //TODO: facility validator
                              },
                            ),
                            Utils().sizedBox,
                          ],
                        )
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
