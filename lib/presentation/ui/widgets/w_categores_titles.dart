import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_color.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';

class WCategoriesTitle extends StatelessWidget {
  final String textTitle;

  const WCategoriesTitle({Key? key, required this.textTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, top: 36.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textTitle,
            style: AppStyles.getTitleCategory(),
          ),
          Row(
            children: [
              GestureDetector(
                child: Text(
                  "View All",
                  style: AppStyles.getTitleCategory().copyWith(
                    color: AppColors.categorySubtitle,
                  ),
                ),
                onTap: (){

                },
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: AppColors.categorySubtitle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
