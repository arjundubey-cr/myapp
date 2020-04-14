import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0.0,
              title: Text(''),
              centerTitle: true,
              leading: MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.white,
                  )),
            ),
            body: Column(
              children: <Widget>[
                Container(
                  color: Colors.black,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 60,
                            child: Icon(Icons.person,
                                color: Colors.black, size: 40),
                          )
                        ],
                      ),
                      Text(
                        'Student_Name',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 25.0),
                            elevation: 0,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    'Name',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'Student_Name',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Student ID',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    '123456789',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Roll Number',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'Roll_Number',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Branch',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'Branch_Name',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Year(Semester)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'Year_(semester)',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider()
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            elevation: 0,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    'Phone Number',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    '1234567890',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Email-Id',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'demo@email.com',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.symmetric(horizontal: 25.0),
                            color: Colors.black,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    'Personal Details',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            elevation: 0,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    "Father's Name",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'F_Name',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    "Mother's Name",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'M_Name',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    "Guardian's Phone Number",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    '9999999999',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Address',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    'Student_Address',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                                Divider(),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
              ],
            )));
  }
}
