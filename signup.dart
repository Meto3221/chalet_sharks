import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(" Chalet Sharks"),),
      body: ListView(
      //  child:Column(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "First Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder()
              ),
            ),SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Last Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder()
              ),
            ),SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder()
              ),
            ),SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Confirm Password",
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder()
              ),
            ),SizedBox(height: 20,),
             TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder()
              ),
            ),SizedBox(height: 20,),
                 Center(
                   child: ElevatedButton(onPressed: (){
                               Navigator.pushNamed(context, '/LoginScreen');
                             }, child: Text("Submit")),
                 ),
            ]
        )
      );
   // );
  }
}