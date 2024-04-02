import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chalet Sharks"),),
      body: ListView(
       // child:Column(
          children: [
            Image.asset("assets/chalett.jpeg"),
            SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "User Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder()
              ),
            
            ),SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder()
              ),
            ),  SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,'/CategroyScreen');
            }, child: Text("Login")),  
              
        ],
      ),
      );
   // );
  }
}