import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_flutter_course/Core/theme/app_colors.dart';
import 'package:test_flutter_course/models/sura_info.dart';

import '../../Core/constants/image.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "details";
  const QuranDetails({super.key}); // Added 'const'

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> versesSeparated = [];

  @override
  Widget build(BuildContext context) {
    final SuraInfo? suraData =
        ModalRoute.of(context)?.settings.arguments as SuraInfo?;
    if (versesSeparated.isNotEmpty) {
      loadSuraVerses(suraData!.suraNumber.toString());
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Images.detailsBackground,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              children: [
                // AppBar
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: AppColors.goldColor,
                    ),
                    Expanded(
                      child: Text(
                        suraData?.suraNameEn ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColors.goldColor,
                          fontSize: 32,
                          fontFamily: "Janna",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Surah Name in Arabic
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      suraData?.suraNameAr ?? "",
                      style: const TextStyle(
                        color: AppColors.goldColor,
                        fontSize: 24,
                        fontFamily: "Janna",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Verses List
                Expanded(
                  child:ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          itemCount: versesSeparated.length,
                          itemBuilder: (context, index) => Text(
                            "[${index + 1}] ${versesSeparated[index]}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: AppColors.goldColor,
                              fontFamily: "Janna",
                              fontSize: 20,
                            ),
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

  void loadSuraVerses(String suraNumber) async {
    String verses = await rootBundle.loadString("assets/suras/$suraNumber.txt");
    setState(() {
      versesSeparated = verses.split("\n");
    });
  }
}
