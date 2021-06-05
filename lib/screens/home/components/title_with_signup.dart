import 'package:flowerapp/screens/home/Signup/SignUp.dart';
import'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithSignUpBtn extends StatelessWidget {
  const TitleWithSignUpBtn({
    Key? key, 
    required this.title, 
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding *3),
      child: Row(
        children: <Widget>[
          Spacer(),
          // ignore: deprecated_member_use
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kButtonColour,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUp(),
                ),
              );
            },
            child: Text(
              "Sign Up", 
            style: TextStyle(color: Colors.white),
            ),
            ),
          ],
        ),
    );
  }
}


