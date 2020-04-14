import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: 50
              ),
              new Form(
                  child: new Theme(
                    data: new ThemeData( brightness: Brightness.dark, primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.teal, fontSize: 20.0
                            )
                        )
                    ),

                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                                labelText: "Enter Email",
                                hintText: "example@org.com"
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Passsword",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(padding: const EdgeInsets.only(top: 40.0),
                          ),
                          new MaterialButton(
                            height: 40.0,
                            minWidth: 100.0,
                            onPressed: ()  {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()),);
                            },
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Icon(Icons.vpn_key),
                            splashColor: Colors.redAccent,

                          ),
                        ],
                      ),
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
