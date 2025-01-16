import 'package:flutter/material.dart';
import 'package:test_flutter_course/models/sura_info.dart';
import 'package:test_flutter_course/module/Quran/widget/sura_list.dart';

import '../../Core/theme/app_colors.dart';
import '../../Core/constants/image.dart';

class QuranView extends StatelessWidget {
   QuranView({super.key});

    static const String routeName = 'quran';
    final List<SuraInfo> suraRecently = [
      SuraInfo(suraNumber: 1, suraNameAr: "الفاتحه", suraNameEn: "Al-Fatiha", suraVerses: 7),
      SuraInfo(suraNumber: 2, suraNameAr: "البقرة", suraNameEn: "Al-Baqarah", suraVerses: 286),
      SuraInfo(suraNumber: 3, suraNameAr: "آل عمران", suraNameEn: "Aal-E-Imran", suraVerses: 200),
      SuraInfo(suraNumber: 4, suraNameAr: "النساء", suraNameEn: "An-Nisa'", suraVerses: 176),
      SuraInfo(suraNumber: 5, suraNameAr: "المائدة", suraNameEn: "Al-Ma'idah", suraVerses: 120),
      SuraInfo(suraNumber: 6, suraNameAr: "الأنعام", suraNameEn: "Al-An'am", suraVerses: 165),
      SuraInfo(suraNumber: 7, suraNameAr: "الأعراف", suraNameEn: "Al-A'raf", suraVerses: 206),
      SuraInfo(suraNumber: 8, suraNameAr: "الأنفال", suraNameEn: "Al-Anfal", suraVerses: 75),
      SuraInfo(suraNumber: 9, suraNameAr: "التوبة", suraNameEn: "At-Tawbah", suraVerses: 129),
      SuraInfo(suraNumber: 10, suraNameAr: "يونس", suraNameEn: "Yunus", suraVerses: 109),
      SuraInfo(suraNumber: 11, suraNameAr: "هود", suraNameEn: "Hud", suraVerses: 123),
      SuraInfo(suraNumber: 12, suraNameAr: "يوسف", suraNameEn: "Yusuf", suraVerses: 111),
      SuraInfo(suraNumber: 13, suraNameAr: "الرعد", suraNameEn: "Ar-Ra'd", suraVerses: 43),
      SuraInfo(suraNumber: 14, suraNameAr: "إبراهيم", suraNameEn: "Ibrahim", suraVerses: 52),
      SuraInfo(suraNumber: 15, suraNameAr: "الحجر", suraNameEn: "Al-Hijr", suraVerses: 99),
      SuraInfo(suraNumber: 16, suraNameAr: "النحل", suraNameEn: "An-Nahl", suraVerses: 128),
      SuraInfo(suraNumber: 17, suraNameAr: "الإسراء", suraNameEn: "Al-Isra", suraVerses: 111),
      SuraInfo(suraNumber: 18, suraNameAr: "الكهف", suraNameEn: "Al-Kahf", suraVerses: 110),
      SuraInfo(suraNumber: 19, suraNameAr: "مريم", suraNameEn: "Maryam", suraVerses: 98),
      SuraInfo(suraNumber: 20, suraNameAr: "طه", suraNameEn: "Ta-Ha", suraVerses: 135),
      SuraInfo(suraNumber: 21, suraNameAr: "الأنبياء", suraNameEn: "Al-Anbiya", suraVerses: 112),
      SuraInfo(suraNumber: 22, suraNameAr: "الحج", suraNameEn: "Al-Hajj", suraVerses: 78),
      SuraInfo(suraNumber: 23, suraNameAr: "المؤمنون", suraNameEn: "Al-Mu'minun", suraVerses: 118),
      SuraInfo(suraNumber: 24, suraNameAr: "النّور", suraNameEn: "An-Nur", suraVerses: 64),
      SuraInfo(suraNumber: 25, suraNameAr: "الفرقان", suraNameEn: "Al-Furqan", suraVerses: 77),
      SuraInfo(suraNumber: 26, suraNameAr: "الشعراء", suraNameEn: "Ash-Shu'ara", suraVerses: 227),
      SuraInfo(suraNumber: 27, suraNameAr: "النّمل", suraNameEn: "An-Naml", suraVerses: 93),
      SuraInfo(suraNumber: 28, suraNameAr: "القصص", suraNameEn: "Al-Qasas", suraVerses: 88),
      SuraInfo(suraNumber: 29, suraNameAr: "العنكبوت", suraNameEn: "Al-Ankabut", suraVerses: 69),
      SuraInfo(suraNumber: 30, suraNameAr: "الرّوم", suraNameEn: "Ar-Rum", suraVerses: 60),
      SuraInfo(suraNumber: 31, suraNameAr: "لقمان", suraNameEn: "Luqman", suraVerses: 34),
      SuraInfo(suraNumber: 32, suraNameAr: "السجدة", suraNameEn: "As-Sajda", suraVerses: 30),
      SuraInfo(suraNumber: 33, suraNameAr: "الأحزاب", suraNameEn: "Al-Ahzab", suraVerses: 73),
      SuraInfo(suraNumber: 34, suraNameAr: "سبأ", suraNameEn: "Saba", suraVerses: 54),
      SuraInfo(suraNumber: 35, suraNameAr: "فاطر", suraNameEn: "Fatir", suraVerses: 45),
      SuraInfo(suraNumber: 36, suraNameAr: "يس", suraNameEn: "Ya-Sin", suraVerses: 83),
      SuraInfo(suraNumber: 37, suraNameAr: "الصافات", suraNameEn: "As-Saffat", suraVerses: 182),
      SuraInfo(suraNumber: 38, suraNameAr: "ص", suraNameEn: "Sad", suraVerses: 88),
      SuraInfo(suraNumber: 39, suraNameAr: "الزمر", suraNameEn: "Az-Zumar", suraVerses: 75),
      SuraInfo(suraNumber: 40, suraNameAr: "غافر", suraNameEn: "Ghafir", suraVerses: 85),
      SuraInfo(suraNumber: 41, suraNameAr: "فصّلت", suraNameEn: "Fussilat", suraVerses: 54),
      SuraInfo(suraNumber: 42, suraNameAr: "الشورى", suraNameEn: "Ash-Shura", suraVerses: 53),
      SuraInfo(suraNumber: 43, suraNameAr: "الزخرف", suraNameEn: "Az-Zukhruf", suraVerses: 89),
      SuraInfo(suraNumber: 44, suraNameAr: "الدخان", suraNameEn: "Ad-Dukhan", suraVerses: 59),
      SuraInfo(suraNumber: 45, suraNameAr: "الجاثية", suraNameEn: "Al-Jathiya", suraVerses: 37),
      SuraInfo(suraNumber: 46, suraNameAr: "الأحقاف", suraNameEn: "Al-Ahqaf", suraVerses: 35),
      SuraInfo(suraNumber: 47, suraNameAr: "محمد", suraNameEn: "Muhammad", suraVerses: 38),
      SuraInfo(suraNumber: 48, suraNameAr: "الفتح", suraNameEn: "Al-Fath", suraVerses: 29),
      SuraInfo(suraNumber: 49, suraNameAr: "الحجرات", suraNameEn: "Al-Hujurat", suraVerses: 18),
      SuraInfo(suraNumber: 50, suraNameAr: "ق", suraNameEn: "Qaf", suraVerses: 45),
      SuraInfo(suraNumber: 51, suraNameAr: "الذاريات", suraNameEn: "Adh-Dhariyat", suraVerses: 60),
      SuraInfo(suraNumber: 52, suraNameAr: "الطور", suraNameEn: "At-Tur", suraVerses: 49),
      SuraInfo(suraNumber: 53, suraNameAr: "النجم", suraNameEn: "An-Najm", suraVerses: 62),
      SuraInfo(suraNumber: 54, suraNameAr: "القمر", suraNameEn: "Al-Qamar", suraVerses: 55),
      SuraInfo(suraNumber: 55, suraNameAr: "الرحمن", suraNameEn: "Ar-Rahman", suraVerses: 78),
      SuraInfo(suraNumber: 56, suraNameAr: "الواقعة", suraNameEn: "Al-Waqia", suraVerses: 96),
      SuraInfo(suraNumber: 57, suraNameAr: "الحديد", suraNameEn: "Al-Hadid", suraVerses: 29),
      SuraInfo(suraNumber: 58, suraNameAr: "المجادلة", suraNameEn: "Al-Mujadila", suraVerses: 22),
      SuraInfo(suraNumber: 59, suraNameAr: "الحشر", suraNameEn: "Al-Hashr", suraVerses: 24),
      SuraInfo(suraNumber: 60, suraNameAr: "الممتحنة", suraNameEn: "Al-Mumtahina", suraVerses: 13),
      SuraInfo(suraNumber: 61, suraNameAr: "الصف", suraNameEn: "As-Saff", suraVerses: 14),
      SuraInfo(suraNumber: 62, suraNameAr: "الجمعة", suraNameEn: "Al-Jumu'a", suraVerses: 11),
      SuraInfo(suraNumber: 63, suraNameAr: "المنافقون", suraNameEn: "Al-Munafiqun", suraVerses: 11),
      SuraInfo(suraNumber: 64, suraNameAr: "التغابن", suraNameEn: "At-Taghabun", suraVerses: 18),
      SuraInfo(suraNumber: 65, suraNameAr: "الطلاق", suraNameEn: "At-Talaq", suraVerses: 12),
      SuraInfo(suraNumber: 66, suraNameAr: "التحريم", suraNameEn: "At-Tahrim", suraVerses: 12),
      SuraInfo(suraNumber: 67, suraNameAr: "الملك", suraNameEn: "Al-Mulk", suraVerses: 30),
      SuraInfo(suraNumber: 68, suraNameAr: "القلم", suraNameEn: "Al-Qalam", suraVerses: 52),
      SuraInfo(suraNumber: 69, suraNameAr: "الحاقة", suraNameEn: "Al-Haqqa", suraVerses: 52),
      SuraInfo(suraNumber: 70, suraNameAr: "المعارج", suraNameEn: "Al-Ma'arij", suraVerses: 44),
      SuraInfo(suraNumber: 71, suraNameAr: "نوح", suraNameEn: "Nuh", suraVerses: 28),
      SuraInfo(suraNumber: 72, suraNameAr: "الجن", suraNameEn: "Al-Jinn", suraVerses: 28),
      SuraInfo(suraNumber: 73, suraNameAr: "المزمل", suraNameEn: "Al-Muzzammil", suraVerses: 20),
      SuraInfo(suraNumber: 74, suraNameAr: "المدثر", suraNameEn: "Al-Muddathir", suraVerses: 56),
      SuraInfo(suraNumber: 75, suraNameAr: "القيامة", suraNameEn: "Al-Qiyama", suraVerses: 40),
      SuraInfo(suraNumber: 76, suraNameAr: "الإنسان", suraNameEn: "Al-Insan", suraVerses: 31),
      SuraInfo(suraNumber: 77, suraNameAr: "المرسلات", suraNameEn: "Al-Mursalat", suraVerses: 50),
      SuraInfo(suraNumber: 78, suraNameAr: "النبأ", suraNameEn: "An-Naba", suraVerses: 40),
      SuraInfo(suraNumber: 79, suraNameAr: "النازعات", suraNameEn: "An-Nazi'at", suraVerses: 46),
      SuraInfo(suraNumber: 80, suraNameAr: "عبس", suraNameEn: "Abasa", suraVerses: 42),
      SuraInfo(suraNumber: 81, suraNameAr: "التكوير", suraNameEn: "At-Takwir", suraVerses: 29),
      SuraInfo(suraNumber: 82, suraNameAr: "الإنفطار", suraNameEn: "Al-Infitar", suraVerses: 19),
      SuraInfo(suraNumber: 83, suraNameAr: "المطففين", suraNameEn: "Al-Mutaffifin", suraVerses: 36),
      SuraInfo(suraNumber: 84, suraNameAr: "الإنشقاق", suraNameEn: "Al-Inshiqaq", suraVerses: 25),
      SuraInfo(suraNumber: 85, suraNameAr: "البروج", suraNameEn: "Al-Buruj", suraVerses: 22),
      SuraInfo(suraNumber: 86, suraNameAr: "الطارق", suraNameEn: "At-Tariq", suraVerses: 17),
      SuraInfo(suraNumber: 87, suraNameAr: "الأعلى", suraNameEn: "Al-A'la", suraVerses: 19),
      SuraInfo(suraNumber: 88, suraNameAr: "الغاشية", suraNameEn: "Al-Ghashiya", suraVerses: 26),
      SuraInfo(suraNumber: 89, suraNameAr: "الفجر", suraNameEn: "Al-Fajr", suraVerses: 30),
      SuraInfo(suraNumber: 90, suraNameAr: "البلد", suraNameEn: "Al-Balad", suraVerses: 20),
      SuraInfo(suraNumber: 91, suraNameAr: "الشمس", suraNameEn: "Ash-Shams", suraVerses: 15),
      SuraInfo(suraNumber: 92, suraNameAr: "الليل", suraNameEn: "Al-Layl", suraVerses: 21),
      SuraInfo(suraNumber: 93, suraNameAr: "الضحى", suraNameEn: "Ad-Duha", suraVerses: 11),
      SuraInfo(suraNumber: 94, suraNameAr: "الشرح", suraNameEn: "Ash-Sharh", suraVerses: 8),
      SuraInfo(suraNumber: 95, suraNameAr: "التين", suraNameEn: "At-Tin", suraVerses: 8),
      SuraInfo(suraNumber: 96, suraNameAr: "العلق", suraNameEn: "Al-Alaq", suraVerses: 19),
      SuraInfo(suraNumber: 97, suraNameAr: "القدر", suraNameEn: "Al-Qadr", suraVerses: 5),
      SuraInfo(suraNumber: 98, suraNameAr: "البينة", suraNameEn: "Al-Bayyina", suraVerses: 8),
      SuraInfo(suraNumber: 99, suraNameAr: "الزلزلة", suraNameEn: "Az-Zalzalah", suraVerses: 8),
      SuraInfo(suraNumber: 100, suraNameAr: "العاديات", suraNameEn: "Al-Adiyat", suraVerses: 11),
      SuraInfo(suraNumber: 101, suraNameAr: "القارعة", suraNameEn: "Al-Qari'a", suraVerses: 11),
      SuraInfo(suraNumber: 102, suraNameAr: "التكاثر", suraNameEn: "At-Takathur", suraVerses: 8),
      SuraInfo(suraNumber: 103, suraNameAr: "العصر", suraNameEn: "Al-Asr", suraVerses: 3),
      SuraInfo(suraNumber: 104, suraNameAr: "الهمزة", suraNameEn: "Al-Humaza", suraVerses: 9),
      SuraInfo(suraNumber: 105, suraNameAr: "الفيل", suraNameEn: "Al-Fil", suraVerses: 5),
      SuraInfo(suraNumber: 106, suraNameAr: "قريش", suraNameEn: "Quraish", suraVerses: 4),
      SuraInfo(suraNumber: 107, suraNameAr: "الماعون", suraNameEn: "Al-Ma'un", suraVerses: 7),
      SuraInfo(suraNumber: 108, suraNameAr: "الكوثر", suraNameEn: "Al-Kawthar", suraVerses: 3),
      SuraInfo(suraNumber: 109, suraNameAr: "الكافرون", suraNameEn: "Al-Kafiroon", suraVerses: 6),
      SuraInfo(suraNumber: 110, suraNameAr: "النصر", suraNameEn: "An-Nasr", suraVerses: 3),
      SuraInfo(suraNumber: 111, suraNameAr: "المسد", suraNameEn: "Al-Masad", suraVerses: 5),
      SuraInfo(suraNumber: 112, suraNameAr: "الإخلاص", suraNameEn: "Al-Ikhlas", suraVerses: 4),
      SuraInfo(suraNumber: 113, suraNameAr: "الفلق", suraNameEn: "Al-Falaq", suraVerses: 5),
      SuraInfo(suraNumber: 114, suraNameAr: "الناس", suraNameEn: "An-Nas", suraVerses: 6),
   ];

    @override
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
            // Background image
            Image.asset(
              Images.quranBackground,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),

            // Body content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Images.homeLogo),

                    // Search section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child:
                              TextFormField(
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Janna",
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Sura Name',
                                  hintStyle: const TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 20,
                                      fontFamily: "Janna"),
                                  fillColor: AppColors.blackColor.withOpacity(0.7),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: AppColors.goldColor,
                                      width: 2.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: AppColors.goldColor,
                                      width: 2.5,
                                    ),
                                  ),
                                  prefixIcon: const ImageIcon(
                                    AssetImage(
                                      Images.quranIcn,
                                    ),
                                    color: AppColors.goldColor,
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // "Most Recently" title
                    const Text(
                      "Most Recently",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontFamily: "Janna",
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Recently section (ListView)
                    SizedBox(
                      height: 160,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          width: 320,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.goldColor,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      suraRecently[index].suraNameEn,
                                      style: const TextStyle(
                                        fontFamily: "Janna",
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    Text(
                                      suraRecently[index].suraNameAr,
                                      style: const TextStyle(
                                        fontFamily: "Janna",
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    Text(
                                      "${suraRecently[index].suraVerses} verses",
                                      style: const TextStyle(
                                        fontFamily: "Janna",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                Images.recentlyImage,
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) =>
                        const SizedBox(width: 16),
                        itemCount: 3,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // "Suras List" title
                    const Text(
                      "Suras List",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontFamily: "Janna",
                      ),
                    ),

                    // Suras List (vertical ListView)
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(10),
                      itemBuilder: (context, index) => SuraList(
                        suraData: suraRecently[index],
                      ),
                      separatorBuilder: (context, index) => const Divider(
                        endIndent: 20,
                        indent: 20,
                        thickness: 1,
                      ),
                      itemCount: suraRecently.length,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

}
