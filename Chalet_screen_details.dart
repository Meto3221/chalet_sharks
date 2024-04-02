import 'package:flutter/material.dart';

import '../widgets/app_data.dart';


class ChaletDetails extends StatelessWidget {
  const ChaletDetails({Key? key});

  @override
  Widget build(BuildContext context) {
    final dataId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedChalet =
        Details_data.firstWhere((data) => data.equivelent == dataId);

    return Scaffold(
      appBar: AppBar(
        title:const Text('Chalet Details',style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: selectedChalet.image.length,
              itemBuilder: (context, i) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  child: Image.asset(
                    selectedChalet.image[i],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.topCenter,
            child:const Text("overview",
            style: TextStyle(
              fontSize:25,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),),
          ),
         const SizedBox(height: 7,),
          Container(
            height: 200, // Adjust height as needed
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal:10),
                  child:Text(selectedChalet.overview,style:const TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
          ),
           SizedBox(height: 10),
          Divider(),
          Container(
            alignment: Alignment.topCenter,
            child:const Text("details",
            style: TextStyle(
              fontSize:25,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 7,),
          Container(
            height: 200, // Adjust height as needed
            child:ListView(
              children: [
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 10),
                  child:Text(selectedChalet.details,style:const TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          ),

          Divider(thickness:3),
          Center(
            child:MaterialButton(
              color: Colors.blue,
              onPressed:(){
             Navigator.of(context).pushNamed(
              '/open'
             );
              },
              child:Text("book now",style: TextStyle(
                color:Colors.white
              ),),
            ),
          )
        ],

      )
          
        
      );
    
  }
}