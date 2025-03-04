import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_flutter_course/module/Quran/quran_details.dart';
import 'package:test_flutter_course/module/Quran/quran_view.dart';
import 'package:test_flutter_course/module/sebha/sebha_screen.dart';
import 'package:test_flutter_course/splash/splash_screen.dart';
import 'widget/nav.dart';
import 'module/onboarding/onboarding_screen.dart';

int? onboardingState;

Future<void>main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  onboardingState = await pref.getInt('onboardingState');
  await pref.setInt('onboardingState', 1);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: (onboardingState == 1 ? QuranView.routeName : OnboardingScreen.routeName),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        Navigation.routeName: (context) => const Navigation(),
        SebhaScreen.routeName: (context) => const SebhaScreen(),
        QuranView.routeName: (context) => QuranView(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
