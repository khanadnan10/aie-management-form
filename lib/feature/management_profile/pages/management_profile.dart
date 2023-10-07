// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:management_form/feature/form/pages/extracurricular_activities.dart';
import 'package:management_form/feature/management_profile/pages/achievement.dart';
import 'package:management_form/feature/management_profile/pages/chairman_princinpal.dart';
import 'package:management_form/feature/management_profile/pages/extracurricular_activity.dart';
import 'package:management_form/feature/management_profile/pages/special_programs.dart';
import 'package:management_form/feature/management_profile/pages/facility.dart';
import 'package:management_form/feature/management_profile/pages/faculty.dart';
import 'package:management_form/feature/management_profile/pages/vision_mission.dart';
import 'package:management_form/feature/management_profile/widgets/custom_chip.dart';

import 'package:management_form/feature/management_profile/widgets/profile_card.dart';
import 'package:management_form/feature/management_profile/widgets/search_widget.dart';
import 'package:management_form/utils/colors.dart';
import 'package:management_form/utils/utils.dart';

class ManagementProfile extends StatefulWidget {
  const ManagementProfile({super.key});

  @override
  State<ManagementProfile> createState() => _ManagementProfileState();
}

class _ManagementProfileState extends State<ManagementProfile> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(keepPage: true);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 20,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 30, right: 16),
          child: SearchTextField(
            hintText: 'Search',
            fillColor: AppColors.kPurpleLight,
            borderColor: Colors.transparent,
            activeSuffixIcon: false,
            onChanged: (value) {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ProfileIdCard(
                  title: 'Delhi Public school',
                  className: 'VI to VII',
                  onCall: () {},
                  onMessage: () {},
                  screenSize: MediaQuery.of(context).size,
                ),
                Utils().sizedBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CustomChip(
                        index: 0,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 0;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Profile',
                      ),
                      Utils(width: 12, height: 0).sizedBox,
                      CustomChip(
                        index: 1,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Vision / Mission',
                      ),
                      Utils(width: 12, height: 0).sizedBox,
                      CustomChip(
                        index: 2,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Chairman / Principal',
                      ),
                      Utils(width: 12, height: 0).sizedBox,
                      CustomChip(
                        index: 3,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 3;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Faculty',
                      ),
                      Utils(width: 12, height: 0).sizedBox,
                      CustomChip(
                        index: 4,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 4;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Facilities',
                      ),
                      Utils(width: 12, height: 0).sizedBox,
                      CustomChip(
                        index: 5,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 5;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Extracurricular activity',
                      ),
                      Utils(width: 12, height: 0).sizedBox,
                      CustomChip(
                        index: 6,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 6;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Special Programs',
                      ),
                      Utils(width: 12, height: 0).sizedBox,
                      CustomChip(
                        index: 7,
                        currentIndex: _currentIndex,
                        onTap: () {
                          setState(() {
                            _currentIndex = 7;
                          });
                          _pageController.jumpToPage(_currentIndex);
                        },
                        text: 'Achievement',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        _currentIndex = value;
                      });
                    },
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      List<Widget> screen = [
                        const Center(
                            child: Text(
                                'Profile')), // To be implement by the developer who design this section
                        const VisionMission(),
                        const ChairmanPrinicipal(),
                        const Faculty(),
                        const Facility(),
                        const ExtracurricularActivityManagemetProfile(),
                        const SpecialPrograms(),
                        const Achievement(),
                      ];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: screen[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
