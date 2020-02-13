import 'package:flutter/material.dart';
import 'package:shopapp_tut/pages/home.dart';
import 'package:shopapp_tut/pages/signup.dart';
import './pages/login.dart';
import 'pages/home.dart';
import 'package:shopapp_tut/pages/product_details.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red.shade900
      ),
      home: Login(),
      //home: SignUp(),
     // home: HomePage(),


    )
  );
}



