import 'package:flutter/material.dart';

class WInclusiveItems extends StatelessWidget {
  final IconData icon;
  final String text;
  const WInclusiveItems({Key? key,required this.icon,required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
