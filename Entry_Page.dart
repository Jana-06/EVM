
import 'package:flutter/material.dart';

import 'Login_Page.dart';
import 'Signup_Pages.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(child: Text("Welcome to this online EVM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),)),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));}, child: Text("Login"),
                            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                          ),
                        ),
                  Text(""),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUP_Page()));}, child: Text("Sign up"),
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                ],
              ),)
                ],
              ),
            ),
          ),
        ));
  }
}
