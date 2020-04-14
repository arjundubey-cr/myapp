import 'package:flutter/material.dart';

class EndSem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('assets/undercons.png'),
            ),
          )
        ],
      ),
    );
  }
}
