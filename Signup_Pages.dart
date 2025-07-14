import 'package:flutter/material.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';
import 'Rules_Page.dart';
class SignUP_Page extends StatefulWidget {
  const SignUP_Page({super.key});

  @override
  State<SignUP_Page> createState() => _SignUP_PageState();
}

class _SignUP_PageState extends State<SignUP_Page> {
  TextEditingController _NameController = TextEditingController();
  TextEditingController _AdharController = TextEditingController();
  TextEditingController _DOBController = TextEditingController();
  TextEditingController _FamilyNumber = TextEditingController();
  TextEditingController _VoterID = TextEditingController();
  TextEditingController _Emailid = TextEditingController();
  TextEditingController _EmailPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child: Center(
          child:Padding(
            padding: EdgeInsets.all(50),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person,size: 70,),
                  radius: 80,
                ),
                Text(""),
                Text(""),
                TextField(
                  controller: _NameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'enter your Full name......'),
                ),
                Text(""),
                TextField(
                  controller: _AdharController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.add_card_rounded),
                      border: OutlineInputBorder(),
                      labelText: 'Aadhar number',
                      hintText: 'enter your Aadhar number......'),
                ),
                Text(""),
                TextField(
                  controller: _DOBController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.date_range),
                      border: OutlineInputBorder(),
                      labelText: 'Date of Birth',
                      hintText: 'enter your Date of Birth......'),
                ),
                Text(""),
                TextField(
                  controller: _FamilyNumber,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.family_restroom),
                      border: OutlineInputBorder(),
                      labelText: 'Total Family members',
                      hintText: 'enter number of your family members...'),
                ),
                Text(""),
                TextField(
                  controller: _VoterID,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.how_to_vote),
                      border: OutlineInputBorder(),
                      labelText: 'Voter ID',
                      hintText: 'enter your Voter ID...'),
                ),
                Text(""),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientButton(text: "SignUp", onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> RulesPage()));},
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
        ));
  }
}
