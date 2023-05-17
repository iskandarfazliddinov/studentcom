import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_color.dart';
import 'package:student_com_app/presentation/ui/resources/app_images.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';
import 'package:student_com_app/presentation/ui/widgets/w_blog_item.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _getStack(),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      ...List.generate(
                        10,
                        (index) => WBlogItem(
                          index: index,
                          image:
                              "https://cultmall.com.ua/image/catalog/image/catalog/novinkiideika/kh3546.jpg",
                          title: "How to Stay Calm During an Exam",
                          subTitle: "Guides to Studying Abroad",
                          lenth: 9,
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  _getStack() =>  Stack(
    children: [
      Image.asset(
        AppImages.london,
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      ),
      Positioned(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "London",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  "Student accommodation in London",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Read All",
                    style: TextStyle(
                      color: AppColors.categorySubtitle,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.all(12.0),
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
