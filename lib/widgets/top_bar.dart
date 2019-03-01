import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  Widget _search() => Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: 'Search Team Members, Projects, Collection...',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
              border: InputBorder.none,
            ),
          ),
        ),
      );

  Widget _notifications() => Container(
        decoration: BoxDecoration(
          border: Border(
              right: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12)),
        ),
        child: Center(
          child: IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ),
      );

  Widget _settings() => Container(
        decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.black12))),
        child: Center(
          child: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ),
      );

  Widget _me() => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person),
            SizedBox(
              width: 26,
            ),
            Text(
              'Edgar',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 70.0,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Colors.black12))),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 8,
              child: _search(),
            ),
            Flexible(
              flex: 1,
              child: _notifications(),
            ),
            Flexible(
              flex: 1,
              child: _settings(),
            ),
            Flexible(
              flex: 3,
              child: _me(),
            )
          ],
        ),
      ),
    );
  }
}
