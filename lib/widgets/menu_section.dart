import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentSelection;

  final List<String> _menuItems = ["Home", "Data", "Projects", "Collections"];
  final List<IconData> _menuIcons = [
    Icons.home,
    Icons.data_usage,
    Icons.list,
    Icons.playlist_add_check
  ];

  final Widget _menuText = Flexible(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_unchecked,
            color: Colors.red,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            "Menu",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );

  Widget _item(int index) => Container(
        height: 50.0,
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(_menuIcons[index]),
            SizedBox(
              width: 50.0,
            ),
            Text(_menuItems[index])
          ],
        ),
      );

  Widget _unselected(int index) => InkWell(
        onTap: () => setState(() => _currentSelection = index),
        child: _item(index),
      );

  Widget _selected(int index) => Container(
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            border:
                Border(left: BorderSide(color: Colors.blueAccent, width: 4))),
        child: _item(index),
      );

  Widget _buildItems(BuildContext context, int index) =>
      index == _currentSelection ? _selected(index) : _unselected(index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12)
        )
      ),
      margin: EdgeInsets.only(top: 50.0),
      height: 250,
      child: Column(
        children: <Widget>[
          _menuText,
          Flexible(
            flex: 4,
            child: ListView.builder(
                itemCount: _menuItems.length, itemBuilder: _buildItems),
          )
        ],
      ),
    );
  }
}
