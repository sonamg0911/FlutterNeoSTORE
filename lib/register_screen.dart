import 'package:NeoSTORE/custom_flat_button.dart';
import 'package:NeoSTORE/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(0, 0, mediaQuery.size.width * 0.1, 0),
          child: Text(
            'Register',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin:
                  EdgeInsets.fromLTRB(0, mediaQuery.size.height * 0.05, 0, 0),
              child: Text(
                'NeoSTORE',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gotham',
                    fontSize: 46,
                    color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: CustomTextField(
                fieldHintName: 'First Name',
                iconData: Icons.person,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: CustomTextField(
                fieldHintName: 'Last Name',
                iconData: Icons.person,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: CustomTextField(
                fieldHintName: 'Email',
                iconData: Icons.email,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: CustomTextField(
                fieldHintName: 'Password',
                iconData: Icons.lock,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: CustomTextField(
                fieldHintName: 'Confirm Password',
                iconData: Icons.lock,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: mediaQuery.size.width * 0.8,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    'Gender',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: CustomTextField(
                fieldHintName: 'Phone Number',
                iconData: Icons.phone_android,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: CustomFlatButton(buttonName: 'REGISTER'),
            ),
          ],
        ),
      ),
    );
  }
}
