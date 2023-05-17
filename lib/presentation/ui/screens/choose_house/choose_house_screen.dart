import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_com_app/presentation/ui/resources/app_color.dart';
import 'package:student_com_app/presentation/ui/resources/app_icons.dart';
import 'package:student_com_app/presentation/ui/resources/app_images.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';
import 'package:student_com_app/presentation/ui/widgets/w_arrival_time.dart';
import 'package:student_com_app/presentation/ui/widgets/w_categores_titles.dart';
import 'package:student_com_app/presentation/ui/widgets/w_facilities_items.dart';

class ChooseHouseScreen extends StatefulWidget {
  const ChooseHouseScreen({Key? key}) : super(key: key);

  @override
  State<ChooseHouseScreen> createState() => _ChooseHouseScreenState();
}

class _ChooseHouseScreenState extends State<ChooseHouseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _getStack(),
              _getMains(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Distance to Amos Business School\n(London Campus):",
                          style: AppStyles.getTitleCategory().copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const WArrivalTime(
                            run: "23 min ", bus: "11 min", car: "8 min")
                      ],
                    ),
                    Image.asset(
                      AppImages.map,
                      width: 36,
                      height: 36,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    const WCategoriesTitle(textTitle: "Facilities & Security"),
                    SizedBox(
                      height: 200,
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 20,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 8,
                        ),
                        children: List.generate(
                          10,
                          (index) => const WFacilities(
                              icon: Icons.directions_bike, txt: "Cinema Room"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _getChooseRoom(),
              Row(
                children: [
                  Container(color: Colors.yellow,width: 10,height: 35,),
                  const SizedBox(width: 24),
                  Text("Entire Place",style: AppStyles.getTitleCategory().copyWith(fontSize: 20),),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: _getBottomNavigation(),
      ),
    );
  }

  _getStack() => Stack(
        children: [
          Image.asset(
            AppImages.room,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Positioned(
            child: Container(
              color: Colors.black.withOpacity(0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(
                          AppIcons.wishlist,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
}

_getBottomNavigation()=> Row(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: const Icon(
          Icons.help_center_outlined,
          size: 32,
        ),
      ),
    ),
    SizedBox(
      height: 56,
      child: VerticalDivider(
          color: Colors.black.withOpacity(0.3),
          width: 1,
          thickness: 1,
          indent: 0,
          endIndent: 0),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: (){},
        child: const Icon(
          Icons.copy,
          size: 32,
        ),
      ),
    ),
    Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  "View Rooms",
                  style: AppStyles.getBlogTitle()
                      .copyWith(color: Colors.black.withOpacity(0.8)),
                ),
              ),
              const Icon(Icons.arrow_downward_sharp)
            ],
          ),
        ),
      ),
    )
  ],
);

_getChooseRoom() => Container(
      color: Colors.cyanAccent,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose room type",
              style: AppStyles.getTitleCategory().copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ...List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppIcons.meeting,
                            width: 48,
                            height: 48,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Shared Room",
                                style: AppStyles.getBlogTitle()
                                    .copyWith(color: Colors.black),
                              ),
                              const SizedBox(height: 8.0),
                              const Text(
                                  """Enjoy the communal feeling of a shared\nroom, which sleeps two or more in\nseparate beds. Any additional living space\nroom, which sleeps two or more in\nseparate beds. Any additional living space""")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Go it, thanks",
                        style: AppStyles.getTitleCategory()
                            .copyWith(color: Colors.cyan, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );

_getMains() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lewisham Exchange - London Nest",
            style: AppStyles.getTitleCategory().copyWith(fontSize: 20),
          ),
          Text.rich(
            TextSpan(
                text: "384 \$",
                style: AppStyles.getBlogTitle()
                    .copyWith(color: AppColors.colorAmber, fontSize: 28),
                children: [
                  TextSpan(
                    text: " /week",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  )
                ]),
          ),
          const SizedBox(height: 24.0),
          Text(
            "Admire London from above by renting a studio\n\nwith a breathtaking view!",
            style: TextStyle(
              fontSize: 14,
              wordSpacing: 1.4,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 12.0),
          Divider(
            color: Colors.black.withOpacity(0.3),
            thickness: 1,
          )
        ],
      ),
    );
