import 'package:flutter/material.dart';
import 'package:management_form/feature/form/pages/school_info.dart';
import 'package:management_form/feature/form/pages/personal_info.dart';
import 'package:management_form/feature/form/widgets/custom_stepper.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/utils.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.kGrey,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //let's add some padding press alt enter
          Utils().sizedBox,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                CustomStepper(
                  currentIndex: _currentIndex,
                  index: 0,
                  text: 'Personal Info',
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                    _pageController.jumpToPage(0);
                  },
                ),
                CustomStepper(
                  currentIndex: _currentIndex,
                  text: 'School info',
                  index: 1,
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                    _pageController.jumpToPage(1);
                  },
                ),
                CustomStepper(
                  currentIndex: _currentIndex,
                  text: 'Chairman/ principle info',
                  index: 2,
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                    _pageController.jumpToPage(2);
                  },
                ),
                CustomStepper(
                  currentIndex: _currentIndex,
                  text: 'Facilities',
                  index: 3,
                  onTap: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                    _pageController.jumpToPage(3);
                  },
                ),
                CustomStepper(
                  currentIndex: _currentIndex,
                  text: 'Extracurricular activities',
                  index: 4,
                  onTap: () {
                    setState(() {
                      _currentIndex = 4;
                    });
                    _pageController.jumpToPage(4);
                  },
                ),
                CustomStepper(
                  currentIndex: _currentIndex,
                  text: 'Special programs',
                  index: 5,
                  onTap: () {
                    setState(() {
                      _currentIndex = 5;
                    });
                    _pageController.jumpToPage(5);
                  },
                ),
                CustomStepper(
                  currentIndex: _currentIndex,
                  text: 'Achievement',
                  index: 6,
                  isLast: true,
                  onTap: () {
                    setState(() {
                      _currentIndex = 6;
                    });
                    _pageController.jumpToPage(6);
                  },
                ),
              ],
            ),
          ),
          Utils().sizedBox,
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: 7,
              itemBuilder: (context, index) {
                List<Widget> screen = [
                  const PersonalInfo(),
                  const SchoolInfo(),
                  Center(child: Text('Page ${index + 1}')),
                  Center(child: Text('Page ${index + 1}')),
                  Center(child: Text('Page ${index + 1}')),
                  Center(child: Text('Page ${index + 1}')),
                  Center(child: Text('Page ${index + 1}')),
                ];
                return screen[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
