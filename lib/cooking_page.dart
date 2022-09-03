import 'package:cookapp/colors.dart';
import 'package:cookapp/fake_data.dart';
import 'package:cookapp/gen/assets.gen.dart';
import 'package:cookapp/main_screen.dart';
import 'package:cookapp/more_detail_type_cake.dart';
import 'package:flutter/material.dart';

class CookingPage extends StatefulWidget {
  const CookingPage({Key? key}) : super(key: key);

  @override
  State<CookingPage> createState() => _CookingPageState();
}

class _CookingPageState extends State<CookingPage> {
  // This Variable is Used For Change Color in Tag List
  int selected = 0;
  int star = 0;
  int bells = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // This Section is For App Bar and Search Box
              AppBarSearchBox(size: size),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: size.width / 1.5),
                child: const Text(
                  "Labels",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.textgraycolor,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // This Section is For Tag List
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tagsName.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: (() {
                          setState(() {
                            selected = index;
                          });
                        }),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: selected == index
                                    ? AppColor.selectedlistcolor
                                    : AppColor.unselectedlistcolor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(500))),
                            child: Center(
                              child: Text(
                                tagsName[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: size.height / 60),
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Bookmarks",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.textgraycolor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      // Icon Book Mark ro Bezar
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(Assets.icons.bookmark.path),
                                height: 25),
                          ),
                          const Text(
                            "125",
                            style: TextStyle(
                                color: AppColor.textgraycolor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(children: [
                      Image(
                        image: AssetImage(Assets.icons.binOutline.path),
                        height: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage(Assets.icons.exitOutline.path),
                        height: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage(Assets.icons.upAndDownOtline.path),
                        height: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ]),
                  )
                ],
              ),
              // This Section is For Type Of Menu
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const MoreDetailOfTypeCake()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SizedBox(
                    width: double.infinity,
                    height: size.height / 3,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: myCake.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width / 1.5,
                            height: 120,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 252, 252, 252),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    )),
                                    child: myCake[index].image,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          myCake[index].title,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: AppColor.textgraycolor,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 30, left: 10),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  bells = index;
                                                });
                                              },
                                              child: bells == index
                                                  ? Image(
                                                      image: AssetImage(Assets
                                                          .icons.bellFill.path),
                                                      color: AppColor
                                                          .likebellscolor,
                                                      height: 30,
                                                    )
                                                  : Image(
                                                      image: AssetImage(Assets
                                                          .icons.bellFill.path),
                                                      height: 30,
                                                    ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            InkWell(
                                                onTap: (() {
                                                  setState(() {
                                                    star = index;
                                                  });
                                                }),
                                                child: star == index
                                                    ? Image(
                                                        image: AssetImage(Assets
                                                            .icons
                                                            .starGrayFill
                                                            .path),
                                                        color: AppColor
                                                            .likebellscolor,
                                                        height: 30,
                                                      )
                                                    : Image(
                                                        image: AssetImage(Assets
                                                            .icons
                                                            .starGrayFill
                                                            .path),
                                                        height: 30,
                                                      )),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                    width: 40,
                                    height: 40,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: const BoxDecoration(
                                        color: AppColor.likebellscolor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(500))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Image(
                                        image: AssetImage(
                                            Assets.icons.opendoorFill.path),
                                        height: 3,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarSearchBox extends StatelessWidget {
  const AppBarSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: size.height / 2.5,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: AppColor.appbarcolor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: ((context) => const MainScreen())));
                        },
                        child: const Icon(
                          Icons.keyboard_arrow_left_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      const Text(
                        "Cooking",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Image(
                        image: AssetImage(Assets.icons.bellOutline.path),
                        height: 40,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 12,
                    top: 12,
                    left: 12,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(500),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                            fontSize: size.height / 60,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        hintText: "what bookmarkars are you searching for?",
                        fillColor: AppColor.searchboxcolor),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
