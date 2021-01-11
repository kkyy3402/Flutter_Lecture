
import 'package:billi/Util/ColorUtil.dart';
import 'package:billi/Util/Common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(left: 16,top: 16),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [

                    Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                    ),

                    SizedBox(
                      width: 8,
                    ),

                    Text(
                      "BILLI",
                      style: GoogleFonts.spaceMono(
                          color: Colors.white
                      ),

                    )

                  ],
                ),
              ),

              SizedBox(height: 32),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text('BILLI is a team\nof artists',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),

                  FlatButton(
                      onPressed: (){},
                      color:Colors.black,
                      child: Icon(Icons.attach_money,
                        color: Colors.white,
                      )
                  ),
                ],
              ),

              SizedBox(height: 32),

              Container(
                height: 300,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    SizedBox(width: 32,),

                    getPhotoCard(
                        "11",
                        "22",
                        Colors.white
                    ),

                    SizedBox(width: 48,),

                    getPhotoCard(
                        "11",
                        "22",
                        Colors.white
                    ),

                    SizedBox(width: 48,),

                    getPhotoCard(
                        "11",
                        "this is photo card",
                        Colors.white
                    ),

                    SizedBox(width: 48,),

                    getPhotoCard(
                        "11",
                        "this is photo card",
                        Colors.white
                    ),

                    SizedBox(width: 48,),

                    getPhotoCard(
                        "11",
                        "this is photo card",
                        Colors.white
                    ),

                    SizedBox(width: 48,),

                  ],
                ),
              ),

              SizedBox(height: 32),

              getBottomView()

            ],
          ),
        ),
      ),
    );
  }

  Widget getBottomView() {

    return Container(
      padding: EdgeInsets.only(left: 32,right: 32),
      child: Column(
        children: [

          Container(
            height: 70,
            width: 800,
            child: RaisedButton(
              onPressed: () {
                launch("https://play.google.com/store/apps/details?id=com.calandar.joorini_for_android");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.white,
              child: Center(
                child: Text(
                  "주린이 달력",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          SizedBox(height: 16,),

          Container(
            height: 70,
            width: 800,
            child: RaisedButton(
              onPressed: () {
                showToast("준비중 이드아");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.white,
              child: Center(
                child: Text(
                  "부자가 될 상",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          SizedBox(height: 16,),

          Container(
            height: 70,
            width: 800,
            child: RaisedButton(
              onPressed: () {
                showToast("준비중 이드아");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.white,
              child: Center(
                child: Text(
                  "그때살걸",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          SizedBox(height: 16,),

          Container(
            height: 70,
            width: 800,
            child: RaisedButton(
              onPressed: () {
                launch("http://billi.fun/");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.white,
              child: Center(
                child: Text(
                  "After Covid-19",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          SizedBox(height: 48),

        ],
      ),
    );

  }
}

Widget getPhotoCard(String name, String contents, Color color) {
  return Container(
    height: 300,
    width: 150,
    child: Stack(
      children: [

        Container(
          margin: EdgeInsets.only(top: 30),
          height: 270,
          width: 150,
          child: RaisedButton(
            onPressed: () {
              print("Hello");
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: getRandomColor(),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    name,
                    style: GoogleFonts.spaceMono(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 16,),

                  Text(
                    contents,
                    style: GoogleFonts.spaceMono(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 16),
          width: 80,
          height: 80,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                  "data:image/jpeg;base64,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")
          ),
        )

      ],
    ),
  );

}


