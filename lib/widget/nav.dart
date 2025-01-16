import 'package:flutter/material.dart';
import 'package:test_flutter_course/widget/bottom_bar_style.dart';
import 'package:test_flutter_course/module/Quran/quran_view.dart';
import 'package:test_flutter_course/module/radio/radio_screen.dart';
import 'package:test_flutter_course/module/sebha/sebha_screen.dart';
import 'package:test_flutter_course/module/time/time_screen.dart';
import '../Core/theme/app_colors.dart';
import '../module/hadith/hadith_screen.dart';
import '../Core/constants/image.dart';
import '../module/time/time_screen.dart';

class Navigation extends StatefulWidget {
  static const String routeName = "nav";
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndx = 0;
  final List<Widget> _bottomBarItems = [
    QuranView(),
    HadithScreen(),
    SebhaScreen(),
    RadioScreen(),
    TimeScreen(),


  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: _bottomBarItems[currentIndx],
      bottomNavigationBar: BottomNavigationBar(

        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.blackColor,
        selectedItemColor:AppColors.whiteColor,
        backgroundColor: AppColors.goldColor,
        selectedLabelStyle: const TextStyle(
          fontFamily: "Janna",
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),

        currentIndex: currentIndx,
        onTap: (index) {
          setState(() {
            currentIndx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: BarStyle(
                isActive: currentIndx == 0,
                icnPath: Images.quranIcn),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: BarStyle(
          isActive: currentIndx == 1,
          icnPath: Images.hadithIcn),
          label: 'Hadith',
          ),
           BottomNavigationBarItem(
             icon: BarStyle(
                 isActive: currentIndx == 2,
                 icnPath: Images.sebhaIcn),
            label: 'Sebha',
          ),
           BottomNavigationBarItem(
            icon: BarStyle(
                isActive: currentIndx == 3 ,
                icnPath: Images.radioIcn),
            label: 'Radio',
          ),

           BottomNavigationBarItem(
             icon: BarStyle(
                 isActive: currentIndx == 4 ,
                 icnPath: Images.timeIcn),
             label: 'Times',
          ),
        ],
      ),
    );
  }
}
