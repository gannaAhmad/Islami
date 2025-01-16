// import 'package:flutter/material.dart';
// import 'package:test_flutter_course/sura_info.dart';
// import 'package:test_flutter_course/sura_list.dart';
//
// import 'app_colors.dart';
// import 'image.dart';
//
// class QuranScreen extends StatelessWidget {
//   QuranScreen({super.key});
//   static const String routeName = 'quran';
//   final List<SuraInfo> suraRecently = [
//     SuraInfo(
//         suraNumber: 1,
//         suraNameAr: "الفاتحه",
//         suraNameEn: "Al-Fatiha",
//         suraVerses: 7),
//     SuraInfo(
//         suraNumber: 2,
//         suraNameAr: "البقرة",
//         suraNameEn: " Al-Baqarah",
//         suraVerses: 286),
//     SuraInfo(
//         suraNumber: 3,
//         suraNameAr: "آل عمران",
//         suraNameEn: "Aal-E-Imran",
//         suraVerses: 200),
//     SuraInfo(
//         suraNumber: 4,
//         suraNameAr: "النساء",
//         suraNameEn: "An-Nisa'",
//         suraVerses: 176),
//     SuraInfo(
//         suraNumber: 5,
//         suraNameAr: "المائدة",
//         suraNameEn: "Al-Ma'idah",
//         suraVerses: 120),
//     SuraInfo(
//         suraNumber: 6,
//         suraNameAr: "الأنعام",
//         suraNameEn: "Al-An'am",
//         suraVerses: 165),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // background image
//           Image.asset(
//             Images.quranBackground,
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             fit: BoxFit.cover,
//           ),
//           // body content
//           Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: SingleChildScrollView(
//                   child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset(Images.homeLogo),
//                   // search section
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         child: TextFormField(
//                           //text style
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontFamily: "Janna",
//                           ),
//                           // form decoration
//                           decoration: InputDecoration(
//                               hintText: 'Sura Name',
//                               hintStyle: const TextStyle(
//                                   color: AppColors.whiteColor,
//                                   fontSize: 20,
//                                   fontFamily: "Janna"),
//                               fillColor: AppColors.blackColor.withOpacity(0.7),
//                               filled: true,
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                   color: AppColors.goldColor,
//                                   width: 2.5,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                   color: AppColors.goldColor,
//                                   width: 2.5,
//                                 ),
//                               ),
//
//                               // quran icon
//                               prefixIcon: const ImageIcon(
//                                 AssetImage(
//                                   Images.quranIcn,
//                                 ),
//                                 color: AppColors.goldColor,
//                               )),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   const Text(
//                     "Most Recently ",
//                     style: TextStyle(
//                       color: AppColors.whiteColor,
//                       fontSize: 20,
//                       fontFamily: "Janna",
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   // recently section
//                   SizedBox(
//                     child: ListView.separated(
//                       padding: EdgeInsets.all(10),
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, index) => Container(
//                         width: 300,
//                         height: 155,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: AppColors.goldColor,
//                         ),
//                         child: Row(
//                           children: [
//                             Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 10,
//                                   right: 10,
//                                   top: 5,
//                                   bottom: 5,
//                                 ),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Text(
//                                       suraRecently[index].suraNameEn,
//                                       style: const TextStyle(
//                                         fontFamily: "Janna",
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.w700,
//                                         color: AppColors.blackColor,
//                                       ),
//                                     ),
//                                     Text(
//                                       suraRecently[index].suraNameAr,
//                                       style: const TextStyle(
//                                         fontFamily: "Janna",
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.w700,
//                                         color: AppColors.blackColor,
//                                       ),
//                                     ),
//                                     Text(
//                                       "${suraRecently[index].suraVerses} verses",
//                                       style: const TextStyle(
//                                         fontFamily: "Janna",
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w700,
//                                         color: AppColors.blackColor,
//                                       ),
//                                     ),
//                                   ],
//                                 )),
//                             Image.asset(
//                               Images.recentlyImage,
//                             ),
//                           ],
//                         ),
//                       ),
//                       separatorBuilder: (context, index) =>
//                           const SizedBox(width: 16),
//                       itemCount: 3,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Text(
//                     "Suras List",
//                     style: TextStyle(
//                       color: AppColors.whiteColor,
//                       fontSize: 20,
//                       fontFamily: "Janna",
//                     ),
//                   ),
//                   // sura section
//                   ListView.separated(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       padding: const EdgeInsets.all(20),
//                       itemBuilder: (contex, index) => SuraList(suraData:suraRecently[index],),
//                       separatorBuilder: (contex, index) => const Divider(
//                             endIndent: 20,
//                             indent: 20,
//                             thickness: 1,
//                           ),
//                       itemCount: suraRecently.length),
//                 ],
//               ),
//               ),
//           ),
//         ],
//       ),
//     );
//   }
// }
