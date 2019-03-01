import 'package:flutter/material.dart';
import 'package:tablet_dashboard/widgets/chart_goals.dart';
import 'package:tablet_dashboard/widgets/details_list.dart';
import 'package:tablet_dashboard/widgets/team_members.dart';
import 'package:tablet_dashboard/widgets/top_bar.dart';

class MainBody extends StatelessWidget {

  Widget _mainContainer() => Container(
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TeamMembers(),
          DetailsList(),
          ChartAndGoals()
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TopBar(),
          Expanded(child: _mainContainer())
        ],
      ),
    );
  }
}