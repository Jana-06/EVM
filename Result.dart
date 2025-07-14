import 'dart:ffi';

import 'package:evm/main.dart';
import 'package:flutter/material.dart';

import '../main.dart';
class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  color: cl,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      party,
                      Text("Leading party is:\n$leading: $count"),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
