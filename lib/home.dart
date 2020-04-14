import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp/assessment.dart';
import 'package:myapp/endsem.dart';
import 'package:myapp/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var name = 'Student_Name';
    var studentEmail = "demo@email.com";
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.values[1]),
        home: Scaffold(
            appBar: AppBar(
              title: new Text('FOE-SAT'),
              backgroundColor: Colors.black,
              elevation: 0, //primary color
            ),
            /*** Everything inside the body will be
           * printed on the main screen.
           * CODE FOR HOME PAGE STARTS FROM HERE**/
            backgroundColor: Colors.white, //primary color
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Hello, $name',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Lemonada',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 60,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        color: Colors.white70,
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Profile'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        color: Colors.white70,
                        child: ListTile(
                          leading: Icon(Icons.assessment),
                          title: Text('Assessment'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Assessment(),
                            )
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        color: Colors.white70,
                        child: ListTile(
                          leading: Icon(Icons.assignment),
                          title: Text('Assignment'),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        color: Colors.white70,
                        child: ListTile(
                          leading: Icon(Icons.account_balance_wallet),
                          title: Text('Sessional Papers'),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        color: Colors.white70,
                        child: ListTile(
                          leading: Icon(Icons.import_contacts),
                          title: Text('End-Sem Papers'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            /****
              THE BELOW CODE IS FOR DRAWER. DRAWER IS PLACED ON LEFT HAND SIDE OF THE APPBAR
              AND IS USED TO DISPLAY THE CONTENT OF THE APP WHICH CANT BE PLACED INTO OTHER APPS
              THE onTap() FUNCTION IS USED TO COMMAND DIFFERENT TABS.
           ****/
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        UserAccountsDrawerHeader(
                            accountName: Text('$name'),
                            currentAccountPicture: Stack(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.person, size: 40, color: Colors.black,),
                                )
                              ],
                            ),
                            accountEmail: Text('$studentEmail'),
                        ),
                        ListTile(
                          title: Text('Academic Calendar'),
                          trailing: Icon(Icons.calendar_today),
                        ),
                        ListTile(
                          title: Text('Upcoming Events'),
                          trailing: Icon(Icons.event_note),
                        ),
                        ListTile(
                          title: Text('Time Tabel'),
                          trailing: Icon(Icons.table_chart),
                        ),
                        ListTile(
                          title: Text('Notice'),
                          trailing: Icon(Icons.notifications),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Feedback"),
                          trailing: Icon(Icons.feedback),
                        ),
                        ListTile(
                          title: Text('About App'),
                          trailing: Icon(Icons.info),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Divider(),
                            ListTile(
                              leading: Icon(Icons.exit_to_app),
                              title: Text('LOGOUT'),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
