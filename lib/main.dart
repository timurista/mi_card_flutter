import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        colors: <Color>[Colors.deepPurple, Colors.lightBlue])),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 55.0,
                        backgroundColor: Colors.red,
                        backgroundImage:
                            AssetImage("images/timurista-profile.jpeg"),
                      ),
                      Text(
                        "Tim Urista",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: "Pacifico",
                          letterSpacing: 2.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "FULLSTACK ENGINEER",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2.5,
                          color: Colors.lightBlue[100],
                          fontFamily: "Comfortaa",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "cloud • ai • web • mobile",
                        style: TextStyle(
                          color: Colors.indigoAccent[100],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 150.0,
                        child: Divider(
                          color: Colors.lightBlueAccent[100],
                        ),
                      ),
                      Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 24),
                          child: RaisedButton(
                            onPressed: _launchTelephone,
                            child: ListTile(
                              leading: Image(
                                image: AssetImage("images/slack.png"),
                                width: 24,
                                height: 24,
                              ),
                              title: Text(
                                "Request work on slack",
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )),
                      Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 24),
                          child: RaisedButton(
                            onPressed: _launchEmail,
                            child: ListTile(
                              leading: Icon(
                                Icons.email,
                                color: Colors.indigo,
                              ),
                              title: Text(
                                "timothy.urista@gmail.com",
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                              onPressed: () =>
                                  launchURL('https://thetimurista.com'),
                              icon: Icon(
                                Icons.web,
                                color: Colors.indigo,
                              ),
                            ),
                            IconButton(
                                onPressed: () =>
                                    launchURL('https://github.com/timurista'),
                                icon: ImageIcon(
                                  AssetImage("images/github.png"),
                                  color: Colors.indigo,
                                )),
                            IconButton(
                                onPressed: () => launchURL(
                                    'https://www.linkedin.com/in/timothyurista/'),
                                icon: ImageIcon(
                                  AssetImage("images/linkedin.png"),
                                  color: Colors.indigo,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(10.0),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}

_launchTelephone() async {
  const url =
      'https://join.slack.com/t/timuristafree-2jp8453/shared_invite/zt-cwsbotut-gEo2hrqF7qGEFt9r9~_SSQ';
  await launchURL(url);
}

_launchEmail() async {
  const url = 'mailto:timothy.urista@gmail.com';
  await launchURL(url);
}

launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
