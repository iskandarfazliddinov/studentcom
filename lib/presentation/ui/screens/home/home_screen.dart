import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_color.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:student_com_app/presentation/ui/resources/app_images.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';
import 'package:student_com_app/presentation/ui/screens/choose_house/choose_house_screen.dart';
import 'package:student_com_app/presentation/ui/widgets/w_arrival_time.dart';
import 'package:student_com_app/presentation/ui/widgets/w_blog_item.dart';
import 'package:student_com_app/presentation/ui/widgets/w_categores_titles.dart';
import 'package:student_com_app/presentation/ui/widgets/w_categories_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> listImages = [
  AppImages.carusel,
  AppImages.carusel,
  AppImages.carusel,
  AppImages.carusel,
];

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getCarousel(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const WCategoriesTitle(textTitle: "Hot properties"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WCategories(
                                addressTitle: "Lewisham Exchange London",
                                money: "380\$",
                                addressSubTitle:
                                    "Distance to Amos Business School (London...",
                                tapCallback: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ChooseHouseScreen(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const WCategoriesTitle(textTitle: "Special offer"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WCategories(
                                addressTitle: "Lewisham Exchange London",
                                money: "380\$",
                                addressSubTitle:
                                    "Distance to Amos Business School (London...",
                                tapCallback: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ChooseHouseScreen(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      color: const Color(0xFFFFF8DB),
                      margin: const EdgeInsets.symmetric(vertical: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppImages.operator,
                                  width: 50,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Online booking consultant",
                                      style: AppStyles.getTitleCategory()
                                          .copyWith(fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Professional consultant",
                                      style: AppStyles.getTitleCategory()
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  Text(
                    "Blog",
                    style: AppStyles.getTitleCategory(),
                  ),
                  ...List.generate(
                    4,
                    (index) => WBlogItem(
                      index: index,
                      image:
                          "https://www.amideast.org/sites/default/files/styles/internal_banner/public/F46C5DF9-3B12-44CF-8CC4-E811D51F48C2-377-00000034F35AA1BF.jpg?itok=tJ02sWa-",
                      title: "How to Stay Calm During an Exam",
                      subTitle: "Guides to Studying Abroad",
                      lenth: 3,
                    ),
                  ),
                  Text(
                    "Top university searches",
                    style: AppStyles.getTitleCategory(),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ...List.generate(
                    8,
                    (index) => GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFE7E7E6),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "London School of Economics and Political Science",
                              style: TextStyle(
                                color: Colors.black.withOpacity(
                                  0.6,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _getAppBar() => AppBar(
        backgroundColor: AppColors.appBarColor,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Toshkent",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                _getSizeBox(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xFF444444)),
                      child: Center(
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white.withOpacity(
                                  0.5,
                                ),
                              ),
                              hintText: "I am going to study at...",
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(
                                  0.5,
                                ),
                              ),
                              fillColor: Colors.white),
                          textInputAction: TextInputAction.search,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                _getSizeBox(),
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

_getCarousel() => Container(
      color: AppColors.appBarColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: CarouselImages(
          scaleFactor: 0.7,
          verticalAlignment: Alignment.bottomCenter,
          listImages: listImages,
          height: 200,
          onTap: (index) {},
        ),
      ),
    );

_getSizeBox() => const SizedBox(width: 12);
