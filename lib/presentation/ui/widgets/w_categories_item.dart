import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_images.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';

import 'w_arrival_time.dart';

class WCategories extends StatelessWidget {
  final String addressTitle;
  final String money;
  final String addressSubTitle;
  final GestureTapCallback tapCallback;


  const WCategories({
    Key? key,
    required this.addressTitle,
    required this.money,
    required this.addressSubTitle,
    required this.tapCallback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCallback,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.room,
            width: 230,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              addressTitle,
              style: AppStyles.getTitleCategory()
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Text.rich(
            TextSpan(
                text: "From ",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.6),
                ),
                children: [
                   TextSpan(
                    text: "$money\$ ",
                    style: const TextStyle(
                        fontSize: 24,
                        color: Color(0xFFD25D20),
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: " /week",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  )
                ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              addressSubTitle,
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          const WArrivalTime(run: "12 min", bus: "11 min", car: "8 min")
        ],
      ),
    );
  }
}
