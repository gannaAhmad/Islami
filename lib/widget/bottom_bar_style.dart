import 'package:flutter/material.dart';
import 'package:test_flutter_course/Core/theme/app_colors.dart';

class BarStyle extends StatelessWidget {
  final bool isActive;
  final String icnPath;
  const BarStyle({super.key, required this.isActive, required this.icnPath});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric( vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(50),
        color: isActive? AppColors.blackColor.withOpacity(0.6) : null,
      ),
      child: ImageIcon(AssetImage(icnPath)),
    );
  }
}
