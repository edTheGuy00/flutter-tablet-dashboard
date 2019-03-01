import 'package:flutter/material.dart';

class TeamMembers extends StatelessWidget {

  Widget _members() {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Team Members (30)", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}