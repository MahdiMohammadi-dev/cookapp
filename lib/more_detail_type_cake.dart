import 'package:cookapp/colors.dart';
import 'package:cookapp/cooking_page.dart';
import 'package:cookapp/fake_data.dart';
import 'package:cookapp/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class MoreDetailOfTypeCake extends StatelessWidget {
  const MoreDetailOfTypeCake({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.appbarcolor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const CookingPage()));
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_left_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                Text(
                  tagsName[2].name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
                const Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              WhiteBackground(size: size),
              BellAndStarIcon(size: size),
              Padding(
                padding:
                    EdgeInsets.only(top: size.height / 5, left: 10, right: 5),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.title_rounded,
                          size: 35,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text("Title",
                            style: TextStyle(
                                color: AppColor.textgraycolor,
                                fontWeight: FontWeight.w800,
                                fontSize: 17)),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: size.width / 1.1,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(137, 241, 241, 241),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              tagsName[2].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 148, 147, 147)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage(Assets.icons.url.path),
                            height: 30,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text("Url",
                            style: TextStyle(
                                color: AppColor.textgraycolor,
                                fontWeight: FontWeight.w800,
                                fontSize: 17)),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: size.width / 1.1,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(137, 241, 241, 241),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            Text(
                              "https:cook.ir/descripti/cake/2..",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 148, 147, 147)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage(Assets.icons.description.path),
                            height: 30,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text("Description",
                            style: TextStyle(
                                color: AppColor.textgraycolor,
                                fontWeight: FontWeight.w800,
                                fontSize: 17)),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: size.width / 1.1,
                      height: size.height / 2,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(137, 241, 241, 241),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.""",
                              maxLines: 15,
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 148, 147, 147)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage(Assets.icons.photoIcon.path),
                            height: 30,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text("Photos",
                            style: TextStyle(
                                color: AppColor.textgraycolor,
                                fontWeight: FontWeight.w800,
                                fontSize: 17)),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 224, 220, 253),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: ListView.builder(
                            itemCount: myCake.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  width: 100,
                                  height: 100,
                                  child: myCake[index].image,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              );
                            })),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              print("object");
                            },
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  border:
                                      Border.all(color: AppColor.appbarcolor)),
                              child: const Center(
                                  child: Text("Cancel",
                                      style: TextStyle(
                                        color: AppColor.appbarcolor,
                                        fontWeight: FontWeight.w500,
                                      ))),
                            ),
                          ),
                          InkWell(
                            onTap: (() {
                              print("object");
                            }),
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: AppColor.appbarcolor,
                              ),
                              child: const Center(
                                  child: Text("Save",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ))),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BellAndStarIcon extends StatelessWidget {
  const BellAndStarIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height / 9.9, left: size.width / 1.9),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 192, 192, 192),
                    offset: Offset.zero,
                    blurRadius: 5,
                    spreadRadius: 1,
                    blurStyle: BlurStyle.normal)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(500)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image(image: AssetImage(Assets.icons.bellFill.path)),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            width: 50,
            height: 50,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 192, 192, 192),
                    offset: Offset.zero,
                    blurRadius: 5,
                    spreadRadius: 1,
                    blurStyle: BlurStyle.normal)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(500)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image(image: AssetImage(Assets.icons.starFill.path)),
            ),
          ),
        ],
      ),
    );
  }
}

class WhiteBackground extends StatelessWidget {
  const WhiteBackground({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height / 8),
      child: Expanded(
        child: Container(
          width: double.infinity,
          height: size.height * 1.31,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50))),
        ),
      ),
    );
  }
}
