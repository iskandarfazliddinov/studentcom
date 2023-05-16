import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_color.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _getAppBar(),
    );
  }
  _getAppBar() => AppBar(
    backgroundColor: AppColors.appBarColor,
    actions: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  Icon(Icons.person_outline_sharp,color: Colors.white.withOpacity(0.8,),),
                  Text("I'm a partner",style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 16),)
                ],
              ),
            ),
            Text("Profile",style: AppStyles.getTitleCategory().copyWith(color: Colors.white,fontSize: 20),),
            const SizedBox(width: 4),
            const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.headset_mic,
                color: Colors.white,
              ),
            ),
          ],
        ),
      )
    ],
  );
}
