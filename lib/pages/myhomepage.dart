import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';


class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  List<String> strs = [];
  String url="";

  bool _isVisible = false,test=false;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(

          child: Column(


            children: [

              Text("BHAKTI SHRADHHA",style:GoogleFonts.quando(textStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30)), ),
              SizedBox(height: 20,),//just for padding
              Container(
                decoration: new BoxDecoration(border: new Border.all(color: Colors.green,),color: Colors.yellow,),

                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Text("माता वैष्णो देवी",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20,),),

                  onTap: (){
                        url="https://www.shutterstock.com/image-photo/vaishno-devi-katra-jammu-indiavaishno-260nw-1174801372.jpg";
                        strs = [
                          "Devi Stuti",
                          "Durga Apadarastakam",
                          "Devi Kawach",
                          "Aarti",
                        ];
                          setState(() {
                            _isVisible = true;

                          });
                        },
                        ),
                    InkWell(
                      child: Text("महाकालेश्वर",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),

                      onTap: (){
                        url="https://spiderimg.amarujala.com/cdn-cgi/image/width=674,height=379.25,fit=cover,f=auto/assets/images/2020/02/21/750x506/mahakal_1582256124.png";
                        strs = [
                          "Maha Mrityumjai Mantra",
                          "Umapati Mahadevi",
                          "Aarti"
                        ];
                        setState(() {
                          _isVisible = true;

                        });
                      },
                    ),
                     ],

                ),
              ),
              SizedBox(height: 20,),
              Visibility(
                visible: _isVisible,
                child: Column(
                  children: [
                    Image.network(url),
                    Container(

                      child:ListView(
                          shrinkWrap: true,
                        children: strs.map((strone){
                          return Container(
                            decoration: new BoxDecoration(border: new Border.all(color: Colors.pink,),color: Colors.amber,borderRadius: BorderRadius.all(Radius.circular(20))),

                            child: InkWell(child: Text(strone),onTap:(){
                                print("hello i am pressed "+strone);

                                setState(() {
                                  test=true;
                                });
                                Text("hello");

                            } ,),
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(15),
                           // color: Colors.green[100],

                          );
                        }).toList(),
                      ),



              ),
                    Visibility(
                        visible: test,
                        child: Text("hello/n")
                    ),
                  ],
                ),
              ),




            ],
          ),
        ),
      ),

    );
  }
}