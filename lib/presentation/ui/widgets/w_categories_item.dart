import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';

class WCategories extends StatelessWidget {
  final String addressTitle;
  final String money;
  final String addressSubTitle;
  final String run;
  final String bus;
  final String car;

  const WCategories({
    Key? key,
    required this.addressTitle,
    required this.money,
    required this.addressSubTitle,
    required this.run,
    required this.bus,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          "https://i.pinimg.com/originals/0a/6a/cd/0a6acd98821ad89e3d8bec0b6d88be4d.jpg",
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
              ]),
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
        Row(
          children:  [
            const Icon(Icons.directions_run, size: 10),
            Text(
              run,
              style: const TextStyle(fontSize: 10),
            ),
            const SizedBox(
              width: 16,
            ),
            const Icon(Icons.bus_alert, size: 10),
            Text(
              bus,
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(
              width: 16,
            ),
            const Icon(Icons.local_taxi, size: 10),
            Text(
              car,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        )
      ],
    );
  }
}
