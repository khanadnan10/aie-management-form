// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:management_form/feature/form/widgets/custom_text_form_field.dart';

import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class SchoolInfo extends StatefulWidget {
  const SchoolInfo({super.key});

  @override
  State<SchoolInfo> createState() => _SchoolInfoState();
}

class _SchoolInfoState extends State<SchoolInfo> {
  final TextEditingController _schoolCodeController = TextEditingController();
  final TextEditingController _classFromController = TextEditingController();
  final TextEditingController _classToController = TextEditingController();
  final TextEditingController _mottoController = TextEditingController();
  final TextEditingController _aboutSchoolController = TextEditingController();
  final TextEditingController _visionController = TextEditingController();
  final TextEditingController _missionController = TextEditingController();

  final GlobalKey _formKeyPage2 = GlobalKey<FormState>();

  @override
  void dispose() {
    _schoolCodeController.dispose();
    _classFromController.dispose();
    _classToController.dispose();
    _mottoController.dispose();
    _aboutSchoolController.dispose();
    _visionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _formKeyPage2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'School Code*',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _schoolCodeController,
                hintText: 'ex: 0333',
                validator: (value) {
                  //TODO: School Code validator
                },
              ),
              Utils().sizedBox,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Class from*',
                          style: Font.formTextStyle,
                        ),
                        Utils(height: 10).sizedBox,
                        CustomTextFormField(
                          controller: _classFromController,
                          suffixIconType: SuffixIconType.dropDown,
                          dropdownOptions: const ['V', 'VI', 'VII'],
                          hintText: 'V',
                          validator: (value) {
                            //TODO: Class from* validator
                          },
                        ),
                      ],
                    ),
                  ),
                  Utils(height: 0, width: 16).sizedBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Class to*',
                          style: Font.formTextStyle,
                        ),
                        Utils(height: 10).sizedBox,
                        CustomTextFormField(
                          controller: _classToController,
                          suffixIconType: SuffixIconType.dropDown,
                          dropdownOptions: const ['X', 'XI', 'XII'],
                          hintText: 'XII',
                          validator: (value) {
                            //TODO: Class from* validator
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Utils().sizedBox,
              Text(
                'Motto',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _mottoController,
                maxLines: 3,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                hintText: 'About school',
                validator: (value) {
                  //TODO: Motto validator
                },
              ),
              Utils().sizedBox,
              Text(
                'About school*',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                maxLines: 5,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                controller: _aboutSchoolController,
                hintText: 'About school',
                validator: (value) {
                  //TODO: About school validator
                },
              ),
              Utils().sizedBox,
              Text(
                'Vision',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _visionController,
                maxLines: 5,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                hintText: 'School Vision',
                validator: (value) {
                  //TODO: Vision validator
                },
              ),
              Utils().sizedBox,
              Text(
                'Mission',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _missionController,
                maxLines: 5,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                hintText: 'School mission',
                validator: (value) {
                  //TODO: Mission validator
                },
              ),
              Utils(height: 30).sizedBox,
              GestureDetector(
                onTap: () {
                  //TODO: Next Step after form validation
                  // Use State Management for the stepper updation
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
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
              Utils(height: 50).sizedBox,
            ],
          ),
        ),
      ),
    );
  }
}
