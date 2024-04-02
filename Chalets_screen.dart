
import 'package:flutter/material.dart';

import '../widgets/app_data.dart';
import '../widgets/chalet_item.dart';


class ChaletScreen extends StatelessWidget {
  const ChaletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgument=ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId=routeArgument['id'];
    final categoryTitle=routeArgument['title'];
    final filteredlist= Chalets_data.where((chalet){
      return chalet.categories.contains(categoryId);
    }
    ).toList();
    return Scaffold(
      appBar:AppBar(
        title: Text("Chalets"),
      ),
      body:GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 200,
          childAspectRatio:4/5 ,
          crossAxisCount:2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
          ),
        itemCount:filteredlist.length,
        itemBuilder:(context,i){
      return ChaletItem(
      id:filteredlist[i].id ,
      title:filteredlist[i].title ,
      image:filteredlist[i].image ,
      );
        }
        ),
    );
  }
}