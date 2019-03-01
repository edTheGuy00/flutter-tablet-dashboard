import 'package:flutter/material.dart';

class ChartAndGoals extends StatelessWidget {
  Widget _chartCard() => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.red))),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text("Chart"), Text("October")],
              ),
            )
          ],
        ),
      );

  Widget _goalsCard() => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text("Test"),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 5,
              child: _chartCard(),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 2,
              child: _goalsCard(),
            )
          ],
        ),
      ),
    );
  }
}
