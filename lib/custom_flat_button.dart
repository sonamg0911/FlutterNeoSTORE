import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String buttonName;

  CustomFlatButton({@required this.buttonName});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(5),
      width: mediaQuery.size.width * 0.8,
      child: FlatButton(
        onPressed: () {},
        child: Text(
          buttonName,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
