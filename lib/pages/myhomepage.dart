import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("BHAKTI SHRADHHA",style:GoogleFonts.quando(textStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30)), ),
            Container(
              decoration: new BoxDecoration(border: new Border.all(color: Colors.green),color: Colors.yellow),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                children: [
                  Text("VAISHNO DEVI",),
                  Text("UJJAIN MAHAKAL"),


                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}