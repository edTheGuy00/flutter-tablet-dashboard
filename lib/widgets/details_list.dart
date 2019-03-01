import 'package:flutter/material.dart';
import 'package:tablet_dashboard/model/mock_data.dart';
import 'package:tablet_dashboard/widgets/info_card.dart';

class DetailsList extends StatelessWidget {
  Widget _buildCard(BuildContext context, int index) =>
      InfoCard(statisticsInfo: statisticsInfo[index]);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      height: 220,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(
              width: 20.0,
            ),
        itemCount: statisticsInfo.length,
        itemBuilder: _buildCard,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
