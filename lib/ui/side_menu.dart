import 'package:flutter/material.dart';
import 'package:tablet_dashboard/widgets/menu_section.dart';

class SideMenu extends StatelessWidget {
  final Widget _notifications = Container(
    color: Colors.grey[100],
    height: 120,
    child: Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 90.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            'Ed was recently online',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );

  final Widget _header = Container(
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.black12),
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.ac_unit),
        SizedBox(
          width: 10,
        ),
        Text("Radesign")
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(color: Colors.black12),
        )
      ),
      child: Column(
        children: <Widget>[_header, _notifications, Menu()],
      ),
    );
  }
}
