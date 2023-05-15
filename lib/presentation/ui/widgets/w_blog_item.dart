import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';


class WBlogItem extends StatelessWidget {
  final int index ;
  final String image;
  final String title;
  final String subTitle;
  final int lenth;

  const WBlogItem({Key? key,required this.index,required this.image,required this.title,required this.subTitle,required this.lenth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              _getSizeBox(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.getBlogTitle(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: const Color(0xFFE9ECF1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 6.0),
                      child: Text(
                        subTitle,
                        style: AppStyles.getBlogTitle()
                            .copyWith(fontSize: 12),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          color: index == lenth
              ? Colors.white
              : Colors.black.withOpacity(0.3),
          thickness: index == lenth ? 0 : 1,
        )
      ],
    );
  }
  _getSizeBox() => const SizedBox(
    width: 12,
  );
}
