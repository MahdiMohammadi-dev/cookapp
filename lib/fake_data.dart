import 'package:cookapp/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

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
  CakeList(title: "Angel Cake",
  image: Image(image: AssetImage(Assets.images.pic1.path,),fit: BoxFit.cover, height:50)
  ),
  CakeList(title: "Apple Cake",
  image: Image(image: AssetImage(Assets.images.pic2.path),fit: BoxFit.cover,height:50)
  ),
  CakeList(title: "Beer Cake",
  image: Image(image: AssetImage(Assets.images.pic3.path),fit: BoxFit.cover,height:50)
  ),
  CakeList(title: "Baba Cake",
  image: Image(image: AssetImage(Assets.images.pic4.path),fit: BoxFit.cover,height:50)
  ),
  CakeList(title: "Benana Cake",
  image: Image(image: AssetImage(Assets.images.pic5.path),fit: BoxFit.cover,height:50)
  ),
  CakeList(title: "Batik Cake",
  image: Image(image: AssetImage(Assets.images.pic6.path),fit: BoxFit.cover,height:50)
  ),
  CakeList(title: "Brownie Cake",
  image: Image(image: AssetImage(Assets.images.pic7.path),fit: BoxFit.cover,height:50)
  ),
  CakeList(title: "Chocolate Donate",
  image: Image(image: AssetImage(Assets.images.pic9.path),fit: BoxFit.cover,height:50)
  ),
  
];
