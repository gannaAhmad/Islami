import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_flutter_course/models/OnBoardingData.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  late final PageController controller;
  int pageIndex = 0;
  bool lastPage = false;
  bool firstPage = true;
  final List<OnBoardingData> onBoardings = [
    OnBoardingData(
      imagePath: Images.introOne,
      title: "Welcome To Islmi App",
    ),
    OnBoardingData(
      imagePath: Images.introTwo,
      title: "Welcome To Islami",
      description: "We Are Very Excited To Have You In Our Community",
    ),
    OnBoardingData(
      imagePath: Images.introThree,
      title: "Reading the Quran",
      description: "Read, and your Lord is the Most Generous",
    ),
    OnBoardingData(
      imagePath: Images.introFour,
      title: "Bearish",
      description: "Praise the name of your Lord, the Most High",
    ),
    OnBoardingData(
      imagePath: Images.introFive,
      title: "Holy Quran Radio",
      description:
      "You can listen to the Holy Quran Radio through the application for free and easily",
    ),
  ];

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
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: AppColors.blackColor,
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: onBoardings.length,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                  firstPage = (pageIndex == 0);
                  lastPage = (pageIndex == onBoardings.length - 1);
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(Images.homeLogo, ),
                        const SizedBox(height: 16, ),
                        Expanded(
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(child: Image.asset(onBoardings[index].imagePath,)),
                                if (onBoardings[index].description == null)
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: height * 0.18),
                                    child: Text(
                                      onBoardings[index].title,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontFamily: "Janna",
                                        color: AppColors.goldColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                if (onBoardings[index].description != null)
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: height * 0.05),
                                    child:
                                    Column(
                                      children: [
                                        Text(
                                          onBoardings[index].title,
                                          style: const TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Janna",
                                            color: AppColors.goldColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 16, ),
                                        Text(
                                          onBoardings[index].description!,
                                          style: const TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Janna",
                                            color: AppColors.goldColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            )),
                      ],
                    ));
              },
            ),
            Positioned(
              bottom: 24,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (!firstPage)
                    InkWell(
                      onTap: () {
                        controller.previousPage(
                          duration: const Duration(milliseconds: 200),
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
                  else
                    const SizedBox(),

                  SmoothPageIndicator(
                    controller: controller,
                    count: onBoardings.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: AppColors.grayColor,
                      activeDotColor: AppColors.goldColor,
                    ),
                  ),

                  InkWell(
                    onTap: () async {
                      if (!lastPage) {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          Navigation.routeName,
                              (Route<dynamic> route) => false,
                        );
                      }
                    },
                    child: Text(
                      lastPage ? "Done" : "Next",
                      style: const TextStyle(
                        color: AppColors.grayColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Future<void> _setOnboardingSeen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('isOnboardingDisplayed', true);
  // }
}
