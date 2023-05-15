import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_color.dart';

abstract class AppStyles {
  static TextStyle getTitleCategory() => const TextStyle(
        color: AppColors.appBarColor,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      );

  static TextStyle getBlogTitle() => const TextStyle(
        color: Color(0xFF797777),
        fontSize: 16,
        fontWeight: FontWeight.w500
      );
}
