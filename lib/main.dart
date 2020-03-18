import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(

        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.deepPurple,
                    Colors.lightBlue
                  ])
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 55.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("images/timurista-profile.jpeg"),
              ),
              Text("Tim Urista", style: TextStyle(
                fontSize: 40,
                    color: Colors.white,
                fontFamily: "Pacifico",
                letterSpacing: 2.1,
                fontWeight: FontWeight.bold,
                ),
              ),
              Text("FULLSTACK ENGINEER", style: TextStyle(
                fontSize: 20,
                letterSpacing: 2.5,
                color: Colors.indigoAccent[100],
                fontFamily: "Comfortaa",
              ),
              ),

              SizedBox(height: 20, width: 150.0,
                child: Divider(
                color: Colors.lightBlueAccent[100],
              ),),


              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 24 ),
                  child: ListTile(
                    leading:  Icon(
                      Icons.phone,
                      color: Colors.indigo,
                    ),
                    title: Text("+1 520 349 6601",
                      style: TextStyle(
                      color: Colors.indigo,
                    ),
                  ),
                  )
                ),

              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 24 ),
                  child: ListTile(
                    leading:  Icon(
                      Icons.email,
                      color: Colors.indigo,
                    ),
                    title: Text("timothy.urista@gmail.com",
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                  )
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.web,
                      color: Colors.indigo,
                    ),
                    Icon(
                      Icons.cloud_queue,
                      color: Colors.indigo,
                    ),
                    Icon(
                      Icons.mobile_screen_share,
                      color: Colors.indigo,
                    ),
                    Icon(
                      Icons.brush,
                      color: Colors.indigo,
                    )
                  ],
                ),
              ),

//              Text("places I have worked:", style: TextStyle(color: Colors.white),),
//              Container(
//                width: double.infinity,
//                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    CircleAvatar(
//                      radius: 16,
//                      backgroundColor: Colors.deepPurple,
//                      backgroundImage: NetworkImage("https://lh3.googleusercontent.com/9VvTJ-UIGlggVvaEr-HvOepHLWCU2DtKs08KKJnWwfBkw60W7tOUGCMwp5Sc-VBA4Q=w300"),
//                    ),
//                    SizedBox(
//                      width: 10,
//                    ),
//                    CircleAvatar(
//                      radius: 16,
//                      backgroundColor: Colors.blueAccent,
//                      backgroundImage: NetworkImage("https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512"),
//                    ),
//                  ],
//                ),
//              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
              )
            ],
          ),
        ),

      )
      )
    );
  }
}

