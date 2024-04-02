import 'package:chalet_sharks/screens/Categories_screen.dart';
import 'package:chalet_sharks/screens/login.dart';
import 'package:chalet_sharks/screens/signup.dart';
import 'package:flutter/material.dart';



import 'screens/Chalet_screen_details.dart';
import 'screens/Chalets_screen.dart';
import 'screens/first.dart';
import 'screens/payment.dart';




void main()   {
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 23, 132, 221)),
      ),
      home:  First(),
      routes: {
        '/ first one': (context)=>const ChaletScreen(),
       '/data': (context)=>const ChaletDetails(),
       '/First':(context) => const First(),
       '/LoginScreen':(context) => LoginScreen(),
       '/SignupScreen':(context) => SignupScreen(),
       '/CategroyScreen':(context) => const CategroyScreen(),
       '/open':(context)=>const Payment(),

      }
    );
  }
}