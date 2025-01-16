import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import '../../Core/theme/app_colors.dart';
import '../../Core/constants/image.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<List<String>> allHadiths = [];
  int hadithNum = 50;

  @override
  void initState() {
    super.initState();
    preloadAllHadiths();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Images.hadithBackground,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Image.asset(Images.homeLogo),
                Expanded(
                  child: CarouselSlider.builder(
                    itemCount: allHadiths.length,
                    itemBuilder: (context, index, realIndex) {
                      final hadithContent = allHadiths[index];
                      final title = hadithContent[0];

                      return Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.goldColor,
                          image: const DecorationImage(
                            image: AssetImage(Images.hadithCardBackground),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        Images.hadithStyleL,
                                      ),
                                      Image.asset(
                                        Images.hadithStyleR,
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    Images.hadithStyleB,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text(
                                        title,
                                        style: const TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Janna",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: hadithContent.length - 1,
                                        itemBuilder: (context, i) => Text(
                                          hadithContent[i + 1],
                                          style: const TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18,
                                            fontFamily: "Janna",
                                          ),
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
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height ,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.7,
                      autoPlay: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void preloadAllHadiths() async {
    List<List<String>> tempHadiths = [];
    for (int i = 1; i <= hadithNum; i++) {
      String content =
      await rootBundle.loadString("assets/hadith/h$i.txt");
      tempHadiths.add(content.split("\n"));
    }
    setState(() {
      allHadiths = tempHadiths;
    });
  }
}
