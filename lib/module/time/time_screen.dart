import 'package:flutter/material.dart';

import '../../Core/constants/image.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
        children: [
          Image.asset(Images.timeBackground,
            width:  MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
