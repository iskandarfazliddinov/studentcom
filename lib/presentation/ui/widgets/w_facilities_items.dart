import 'package:flutter/material.dart';

class WFacilities extends StatelessWidget {
  final IconData icon;
  final String txt;

  const WFacilities({Key? key,required this.icon,required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: Colors.black.withOpacity(0.5),),
        const SizedBox(width: 8.0),
        Text(txt,style: TextStyle(color:  Colors.black.withOpacity(0.5),),),
      ],
    );
  }
}
