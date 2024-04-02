
import 'package:flutter/material.dart';
class Textform extends StatelessWidget {
  final String title;
  final TextEditingController data;
  final String text;
 final String? Function(String?)? validator;
 
  const Textform({super.key, required this.title, required this.data, required this.text, this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal:10),
        child:Text(title,style:const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold
      ),),
      ),

      TextFormField(
        maxLength:50,
        validator: validator,
        controller:data ,
        decoration: InputDecoration(
              hintText:text,
              hintStyle:const TextStyle(
              ),
              contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)
              )
            ),
      )
     ],
    );
  }
}