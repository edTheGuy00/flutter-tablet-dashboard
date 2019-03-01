import 'package:flutter/material.dart';
import 'package:tablet_dashboard/model/statistics_info.dart';

class InfoCard extends StatelessWidget {
  final StatisticsInfo statisticsInfo;

  const InfoCard({Key key, this.statisticsInfo}) : super(key: key);

  IconData _getIcon() {
    switch (statisticsInfo.type) {
      case InfoType.views:
        return Icons.remove_red_eye;
      case InfoType.likes:
        return Icons.thumb_up;
      case InfoType.comments:
        return Icons.comment;
      case InfoType.followers:
        return Icons.people;
      default:
        return Icons.remove;
    }
  }

  Color _getIconColor() {
    switch (statisticsInfo.type) {
      case InfoType.views:
        return Colors.blue;
      case InfoType.likes:
        return Colors.pink;
      case InfoType.comments:
        return Colors.yellow[800];
      case InfoType.followers:
        return Colors.green;
      default:
        return Colors.white;
    }
  }

  Color _getIconContainerColor() {
    switch (statisticsInfo.type) {
      case InfoType.views:
        return Colors.blue[50];
      case InfoType.likes:
        return Colors.pink[50];
      case InfoType.comments:
        return Colors.yellow[100];
      case InfoType.followers:
        return Colors.green[50];
      default:
        return Colors.white;
    }
  }

  Widget _titleIconRow() => Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Total ${statisticsInfo.typeString}"),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _getIconContainerColor()),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                _getIcon(),
                size: 14.0,
                color: _getIconColor(),
              ),
            ),
          )
        ],
      ));

  final TextStyle _smallBold = const TextStyle(fontWeight: FontWeight.bold);
  final TextStyle _whiteFont =
      const TextStyle(color: Colors.white, fontSize: 16);

  Widget _percentChangeRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Weeks: "),
              Text(
                "${statisticsInfo.weekChange} %",
                style: _smallBold,
              ),
              Icon(
                Icons.arrow_drop_up,
                color: Colors.green,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("Days: "),
              Text(
                "${statisticsInfo.dayChange} %",
                style: _smallBold,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.red,
              )
            ],
          ),
        ],
      );

  Widget _total() => Text(
        statisticsInfo.totalCount,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
      );

  Widget _totalDailyContainer() => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: _getIconColor(),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Daily ${statisticsInfo.typeString}",
              style: _whiteFont,
            ),
            Text(
              statisticsInfo.dayCount,
              style: _whiteFont,
            )
          ],
        ),
      );

  Widget _paddingContainer(Widget child) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: child);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _paddingContainer(_titleIconRow()),
          _paddingContainer(_total()),
          _paddingContainer(_percentChangeRow()),
          _totalDailyContainer()
        ],
      ),
    );
  }
}
