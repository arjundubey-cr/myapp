import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assessment extends StatefulWidget {
  @override
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Assessment'),
            centerTitle: true,
            backgroundColor: Colors.black,
            leading: MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.white,
                ))),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            create(),
          ],
        ));
  }
}

/// The below code is used for creating tiles for each semester
/// just put these tiles in for loop with number of semesters passed
/// and you'll get the result.
create() {
  return SizedBox(
    height: 250,
    width: 400,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              height: 40,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Semester semester_num',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Marks Obtained",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                    Text(
                      "Max Marks",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                    Text(
                      "Credits Earned",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                    Text(
                      "S.G.P.A.",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Marks_Obtained",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Max_Marks",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Credits_Earned",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "S.G.P.A.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            MaterialButton(
                    splashColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90)
                    ),
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Download Result    ',
                          style: TextStyle(fontSize: 17),
                        ),
                        Icon(
                          Icons.file_download,
                          size: 30,
                        )
                      ],
                    ),
                    onPressed: () => {}),


          ],
        ),
      ),
    ),
  );
}
