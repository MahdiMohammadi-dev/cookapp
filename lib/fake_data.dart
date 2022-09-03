import 'package:cookapp/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data_model.dart';

List<TagList> tagsName = [
  TagList(name: "+"),
  TagList(name: "All"),
  TagList(name: "Cake"),
  TagList(name: "FastFood"),
  TagList(name: "Dinner"),
  TagList(name: "Kebab"),
  TagList(name: "Drinks"),
  TagList(name: "salad"),
];

List<CakeList> myCake = [
  CakeList(
      title: "Angel Cake",
      image: Image(
          image: AssetImage(
            Assets.images.pic1.path,
          ),
          fit: BoxFit.cover,
          height: 50)),
  CakeList(
      title: "Apple Cake",
      image: Image(
          image: AssetImage(Assets.images.pic2.path),
          fit: BoxFit.cover,
          height: 50)),
  CakeList(
      title: "Beer Cake",
      image: Image(
          image: AssetImage(Assets.images.pic3.path),
          fit: BoxFit.cover,
          height: 50)),
  CakeList(
      title: "Baba Cake",
      image: Image(
          image: AssetImage(Assets.images.pic4.path),
          fit: BoxFit.cover,
          height: 50)),
  CakeList(
      title: "Benana Cake",
      image: Image(
          image: AssetImage(Assets.images.pic5.path),
          fit: BoxFit.cover,
          height: 50)),
  CakeList(
      title: "Batik Cake",
      image: Image(
          image: AssetImage(Assets.images.pic6.path),
          fit: BoxFit.cover,
          height: 50)),
  CakeList(
      title: "Brownie Cake",
      image: Image(
          image: AssetImage(Assets.images.pic7.path),
          fit: BoxFit.cover,
          height: 50)),
  CakeList(
      title: "Chocolate Donate",
      image: Image(
          image: AssetImage(Assets.images.pic9.path),
          fit: BoxFit.cover,
          height: 50)),
];

List<CategoryMainPage> mycats = [
  CategoryMainPage(title: "New Ideas",image: Image(image: AssetImage(Assets.icons.idea.path),height: 30,)),
  CategoryMainPage(title: "Music",image: Image(image: AssetImage(Assets.icons.music.path),height: 30,)),
  CategoryMainPage(title: "Programming",image: Image(image: AssetImage(Assets.icons.monitor.path),height: 30,)),
  CategoryMainPage(title: "Cooking",image: Image(image: AssetImage(Assets.icons.burger.path),height: 30,color: Colors.purple,)),
  CategoryMainPage(title: "Dream",image: Image(image: AssetImage(Assets.icons.planeFill.path),height: 30,)),
  CategoryMainPage(title: "Industries",image: Image(image: AssetImage(Assets.icons.atomOutline.path),height: 30,)),
];

List <Color> catsColor = [
   const Color.fromARGB(255, 255, 243, 198),
   const Color.fromARGB(255, 215, 239, 255),
   Color.fromARGB(255, 235, 179, 255),
   const Color.fromARGB(255, 251, 225, 251),
   const Color.fromARGB(255, 184, 238, 220),
   const Color.fromARGB(255, 255, 223, 205),
];
List <Color> catsColortitle = [
   Color.fromARGB(255, 255, 215, 71),
   Color.fromARGB(255, 35, 153, 231),
   Color.fromARGB(255, 182, 48, 231),
   Color.fromARGB(255, 243, 45, 243),
   Color.fromARGB(255, 38, 231, 167),
   Color.fromARGB(255, 235, 111, 39),
];