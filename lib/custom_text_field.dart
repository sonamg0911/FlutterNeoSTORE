import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String fieldHintName;
  final IconData iconData;

  CustomTextField({@required this.fieldHintName,@required this.iconData});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.white),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(2),
      ),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: mediaQuery.size.width * 0.8,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(iconData, color: Colors.white),
          hintText: fieldHintName,
          hintStyle: Theme.of(context).textTheme.headline6,
          labelStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
