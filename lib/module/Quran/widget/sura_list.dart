import 'package:flutter/material.dart';
import 'package:test_flutter_course/module/Quran/quran_details.dart';
import 'package:test_flutter_course/models/sura_info.dart';

import '../../../Core/theme/app_colors.dart';
import '../../../Core/constants/image.dart';

class SuraList extends StatelessWidget {
  final SuraInfo suraData;

  const SuraList({super.key,required this.suraData});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetails.routeName,arguments: suraData);

      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(Images.shape,width:60,height: 60,fit: BoxFit.cover,),
              Text("${suraData.suraNumber} ",style:const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Janna",

              )),
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(suraData.suraNameEn,style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor,
                fontFamily: "Janna"
              )),
               Text("${suraData.suraVerses} verses",style:const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                  fontFamily: "Janna"
              )),
            ],
          ),
          Spacer(),
          Text(suraData.suraNameAr,style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
              fontFamily: "Janna"
          )),
        ],
      ),
    );
  }
}
