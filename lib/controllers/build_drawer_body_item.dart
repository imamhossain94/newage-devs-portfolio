import 'package:flutter/material.dart';

class BuildDrawerBodyItem extends StatelessWidget {
  const BuildDrawerBodyItem({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
