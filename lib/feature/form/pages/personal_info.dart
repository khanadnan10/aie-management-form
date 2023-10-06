// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:management_form/feature/form/widgets/custom_text_form_field.dart';

import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/font.dart';
import 'package:management_form/utils/utils.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _doiController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _altPhoneeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _faxNumController = TextEditingController();
  final TextEditingController _altEmailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final GlobalKey _formKeyPage1 = GlobalKey<FormState>();

  @override
  void dispose() {
    _fullNameController.dispose();
    _doiController.dispose();
    _phoneController.dispose();
    _altPhoneeController.dispose();
    _emailController.dispose();
    _faxNumController.dispose();
    _altEmailController.dispose();
    _addressController.dispose();
    _countryController.dispose();
    _stateController.dispose();
    _cityController.dispose();
    _pincodeController.dispose();
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
          key: _formKeyPage1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    //TODO: Add Image
                  },
                  child: Container(
                    padding: const EdgeInsets.all(50),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
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
              Text(
                'Full name',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _fullNameController,
                hintText: 'Already exist from login',
                validator: (value) {
                  //TODO: Full name validator
                },
              ),
              Utils().sizedBox,
              Text(
                'DOI*',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _doiController,
                keyboardType: TextInputType.datetime,
                hintText: '23/09/2003',
                suffixIconType: SuffixIconType.datePicker,
                validator: (value) {
                  //TODO: DOI validator
                },
              ),
              Utils().sizedBox,
              Text(
                'Phone no*',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                hintText: '5556565655',
                validator: (value) {
                  //TODO: Phone number validator
                },
              ),
              Utils().sizedBox,
              Text(
                'Alt phone no',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _altPhoneeController,
                keyboardType: TextInputType.phone,
                hintText: '5556565655',
                validator: (value) {
                  //TODO: Alt phone no validator
                },
              ),
              Utils().sizedBox,
              Text(
                'Email id*',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'asbvda@jjajdsa/com',
                validator: (value) {
                  //TODO: Email id* validator
                },
              ),
              Utils().sizedBox,
              Text(
                'Alt email id',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _altEmailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'asbvda@jjajdsa/com',
                validator: (value) {
                  //TODO: Alt email idvalidator
                },
              ),
              Utils().sizedBox,
              Text(
                'Fax number',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _faxNumController,
                hintText: 'asbvda@jjajdsa/com',
                validator: (value) {
                  //TODO: Fax number validator
                },
              ),
              Utils().sizedBox,
              Text(
                'Address*',
                style: Font.formTextStyle,
              ),
              Utils(height: 10).sizedBox,
              CustomTextFormField(
                controller: _addressController,
                hintText: '26/556 near mall',
                validator: (value) {
                  //TODO: Address validator
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
                          'Country*',
                          style: Font.formTextStyle,
                        ),
                        Utils(height: 10).sizedBox,
                        CustomTextFormField(
                          controller: _countryController,
                          hintText: 'Country',
                          validator: (value) {
                            //TODO: Country validator
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
                          'State*',
                          style: Font.formTextStyle,
                        ),
                        Utils(height: 10).sizedBox,
                        CustomTextFormField(
                          controller: _stateController,
                          hintText: 'State',
                          validator: (value) {
                            //TODO: State validator
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Utils().sizedBox,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'City*',
                          style: Font.formTextStyle,
                        ),
                        Utils(height: 10).sizedBox,
                        CustomTextFormField(
                          controller: _cityController,
                          hintText: 'City*',
                          validator: (value) {
                            //TODO: City validator
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
                          'Pincode*',
                          style: Font.formTextStyle,
                        ),
                        Utils(height: 10).sizedBox,
                        CustomTextFormField(
                          controller: _pincodeController,
                          keyboardType: TextInputType.number,
                          hintText: '2010003',
                          validator: (value) {
                            //TODO: Pincode* validator
                          },
                        ),
                      ],
                    ),
                  ),
                ],
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
