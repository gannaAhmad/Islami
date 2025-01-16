import 'package:flutter/material.dart';

import '../../Core/constants/image.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
        children: [
          Image.asset(Images.radioBackground,
            width:  MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
