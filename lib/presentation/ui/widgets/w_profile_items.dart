import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';

class WProfileItems extends StatelessWidget {
  final IconData icon;
  final String title;
  final GestureTapCallback onTab;

  const WProfileItems({Key? key,required this.icon,required this.title, required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        title,
                        style: AppStyles.getBlogTitle()
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_right,color: Colors.black.withOpacity(0.5,),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Divider(
                thickness: 1.5,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
