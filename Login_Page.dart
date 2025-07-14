import 'package:evm/Pages/Rules_Page.dart';
import 'package:flutter/material.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _Emailid = TextEditingController();
  TextEditingController _EmailPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: CircleAvatar(
                    child: Icon(Icons.person,size: 70,),
                    radius: 80,
                  ),
                ),
                Text(""),
                Container(
                  child: Column(
                    children: [
                      TextField(
                        controller: _Emailid,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(),
                            labelText: 'Email ID',
                            hintText: 'enter your Email ID...'),
                      ),
                  Text(""),
                  TextField(
                    controller: _EmailPass,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'enter your Password...'),
                  ),
                      Text(""),
                  Text(''),

                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientButton(text: "Login", onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> RulesPage()));},
                      gradientColors: const [
                        Colors.black,
                        Colors.black,
                        Colors.black
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}