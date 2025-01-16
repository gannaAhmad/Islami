import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_flutter_course/module/sebha/sebha_screen.dart';

import '../../Core/theme/app_colors.dart';
import '../../Core/constants/image.dart';
import '../../widget/nav.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = "onboarding";
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  int pageIndex = 0;
  bool lastPage = false;
  bool firstPage = false;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> Items = [
      Images.introOne,
      Images.introTwo,
      Images.introThree,
      Images.introFour,
      Images.introFive,
    ];
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          controller: controller,
          itemCount: Items.length,
          onPageChanged: (index) {
            setState(() {
              pageIndex = index;
              firstPage = (pageIndex == 0);
              lastPage = (pageIndex == Items.length - 1);
            });
          },
          itemBuilder: (context, index) {
            return Image.asset(
              Items[index],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            );
          },
        ),
        Positioned(
          bottom: 24,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // back button
              !firstPage
                  ? InkWell(
                      onTap: () {
                        controller.previousPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(
                          color: AppColors.grayColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),

              SmoothPageIndicator(
                controller: controller,
                count: Items.length,
                effect: const ExpandingDotsEffect(
                  dotColor: AppColors.grayColor,
                  activeDotColor: AppColors.goldColor,
                ),
              ),

              !lastPage
                  ? InkWell(
                      onTap: () {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: AppColors.grayColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          Navigation.routeName,
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: const Text(
                        "Done",
                        style: TextStyle(
                          color: AppColors.grayColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
              // next button
            ],
          ),
        )
      ],
    ));
  }
}
