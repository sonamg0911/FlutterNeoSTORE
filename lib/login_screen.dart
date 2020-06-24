import 'package:NeoSTORE/custom_flat_button.dart';
import 'package:NeoSTORE/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
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
                  EdgeInsets.fromLTRB(0, mediaQuery.size.height * 0.2, 0, 0),
              child: Text(
                'NeoSTORE',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gotham',
                    fontSize: 46,
                    color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: CustomTextField(
                fieldHintName: 'Username',
                iconData: Icons.person,
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
              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: CustomFlatButton(buttonName: 'LOGIN'),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'DONT HAVE AN ACCOUNT?',
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: mediaQuery.size.width * 0.15,
                      height: mediaQuery.size.width * 0.15,
                      color: Color(0xff8B0000),
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
