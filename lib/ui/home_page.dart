import 'package:flutter/material.dart';
import 'package:tablet_dashboard/ui/main_body.dart';
import 'package:tablet_dashboard/ui/side_menu.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    // The number 600 here is a common breakpoint for a typical 7-inch tablet.
    final isTablet = shortestSide > 600;
    if (isTablet) {
      return SafeArea(
        child: Material(
          child: Container(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: SideMenu(),
                  flex: 1,
                ),
                Flexible(
                  child: MainBody(),
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        child: Center(
          child: Text("You are On a Phone"),
        ),
      );
    }

  }
}