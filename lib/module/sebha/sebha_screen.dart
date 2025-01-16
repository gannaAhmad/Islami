import 'package:flutter/material.dart';

import '../../Core/theme/app_colors.dart';
import '../../Core/constants/image.dart';

class SebhaScreen extends StatefulWidget {
  static String routeName = "home";

  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double _rotationAngle = 0.0;
  int _counter = 30;

  void _rotateImage() {
    setState(() {

      if(_counter>0){
        _counter--;
        _rotationAngle += 0.3;
      }else if(_counter == 0){

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Images.sebhaBackground,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Image.asset(Images.homeLogo),
              const SizedBox(height: 20),
              const Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                      fontFamily: "Janna")),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        onTap: _rotateImage,
                        child: Transform.rotate(
                          angle: _rotationAngle,
                          child: Image.asset(
                            Images.sebha,
                            width: 570,
                            height: 572,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "سبحان الله",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor,
                              fontFamily: "Janna",
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            _counter.toString(),
                            style: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor,
                              fontFamily: "Janna",
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
