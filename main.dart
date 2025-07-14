import 'package:evm/Pages/Result.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
class My_Main_Page extends StatefulWidget {
  const My_Main_Page({super.key});

  @override
  State<My_Main_Page> createState() => _My_Main_PageState();
}

class _My_Main_PageState extends State<My_Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
                Padding(padding: const EdgeInsets.all(1.0),child:
                Column(
                  children: [
                    Nomines("BJP", Image.asset("assets/BJP.png",height: 150,), context,count,Colors.orange),
                    Nomines("Congress", Image.asset("assets/Congress.png",height: 150,), context,count,Colors.white),
                    Nomines("BSP", Image.asset("assets/BSP.png",height: 150,), context,count,Colors.blue),
                    Nomines("AAP", Image.asset("assets/AAP.png",height: 150,), context,count,Colors.blue),
                    Nomines("CPI", Image.asset("assets/CPI.png",height: 150,), context,count,Colors.red),
                    ElevatedButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Result()));
                          }, child: Text("Result")),
                    //Text("Visit our website for further queries:"),
                    //ElevatedButton(onPressed: (){Share.share("http://127.0.0.1:3000/5.1+Adding+CSS/5.1.%20Adding%20CSS/external.html");}, child: Text("Website"))
                  ],
                ),
                )
          ],
        ),
      ),
    );
  }
}
int count=0;
String leading ="";
Image party = Image.asset("",);
Color cl = Colors.transparent;
Widget Nomines(Name,Image,context,Count,color){


  return AspectRatio(aspectRatio: 15/10,
  child: Container(
decoration: BoxDecoration(
shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(10.0),color:Colors.white
),
  width: double.infinity,
height: 50,
padding: EdgeInsets.only(left: 5),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
        children: [
    Image,
    Text(Name),
    ]),
    ElevatedButton(onPressed: (){Count++;print(Count);
      if(count<Count){leading = Name;count = Count;print(leading);party = Image;print("image:$party");cl =color;}
      }, child: Text("Vote")),
  ],
),
),
);
}
