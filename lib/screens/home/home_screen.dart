import 'package:flowerapp/components/my_bottom_nav_bar.dart';
import 'package:flowerapp/screens/home/Signup/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flowerapp/screens/home/components/body.dart';
import '../../constants.dart';
import 'Signup/SignUp.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[    
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
                    // ignore: deprecated_member_use
                    FlatButton(shape: RoundedRectangleBorder(
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
            ),),
                    // ignore: deprecated_member_use
                    FlatButton(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kButtonColour,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
            child: Text(
              "Sign In", 
            style: TextStyle(color: Colors.white),
            ),),
                  ],
          )
          ],
      ),
      
    );
  }
}





