import 'package:evm/main.dart';
import 'package:flutter/material.dart';
class RulesPage extends StatefulWidget {
  const RulesPage({super.key});

  @override
  State<RulesPage> createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("1. This is a open source application for the Indian people for voting the leaders with honesty and atmost patriotism"),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_Main_Page()));}, child: Text("Understood"))
          ],
        ),
      ),
    );
  }
}
