import 'package:cookapp/cooking_page.dart';
import 'package:cookapp/fake_data.dart';
import 'package:cookapp/main.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int indexselected = 0;

// This Method is for change in Bottom Nav
  void _itemchanged(int index) {
    setState(() {
      indexselected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: FloatingActionButton(
          elevation: 5,
          onPressed: (() {
            print("object");
          }),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // App Bar Widget
          MainAppBar(size: size),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        color: AppColor.textgraycolor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage(Assets.icons.binOutline.path),
                      height: 40,
                      color: const Color.fromARGB(136, 159, 85, 243),
                    ),
                    Image(
                      image: AssetImage(Assets.icons.editFill.path),
                      height: 40,
                      color: const Color.fromARGB(136, 159, 85, 243),
                    ),
                    Image(
                      image: AssetImage(Assets.icons.upAndDownOtline.path),
                      height: 40,
                      color: const Color.fromARGB(255, 115, 2, 245),
                    ),
                  ],
                )
              ],
            ),
          ),
          CategoryList(size: size),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          currentIndex: indexselected,
          selectedItemColor: Colors.purple,
          onTap: _itemchanged,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 30, color: Colors.purple),
              label: 'test',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border_rounded,
                color: AppColor.textgraycolor,
                size: 30,
              ),
              label: 'test',
            ),
          ]),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height / 1.28,
      child: GridView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: mycats.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              childAspectRatio: 1),
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: (() {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => const CookingPage())));
              }),
              child: Container(
                decoration: BoxDecoration(
                    color: catsColor[index],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 30,
                      ),
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(500),
                          ),
                          color: Colors.white,
                        ),
                        child: mycats[index].image,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      mycats[index].title,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: catsColortitle[index]),
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}

class MainAppBar extends StatelessWidget {
  MainAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  var hand = Image(
    image: AssetImage(Assets.icons.wavehandFill.path),
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: size.height / 2.3,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: AppColor.appbarcolor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage(Assets.icons.mainappbaricon.path),
                        height: 40,
                      ),
                      Image(
                        image: AssetImage(Assets.icons.bellOutline.path),
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi Mahdi",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image(
                              image: AssetImage(Assets.icons.wavehandFill.path),
                              height: 36,
                            )
                          ],
                        ),
                      ],
                    )),
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
                            fontSize: size.height / 40,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        hintText: "what Category are you searching for?",
                        fillColor: AppColor.searchboxcolor),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
