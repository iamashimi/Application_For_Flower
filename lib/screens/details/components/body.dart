import 'package:flowerapp/constants.dart';
import 'package:flutter/material.dart';
import 'image_and_icon.dart';
import 'title_and_features.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcon(size: size),
          TitleAndFeatures(country: 'Sri Lanka', price: 500, title: 'Orchid',),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(width: size.width / 2,
              height: 84,
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),),),
                color: kButtonColour,
                onPressed: (){}, 
                child: Text("More details",
                style: TextStyle(color: Colors.white,
                fontSize: 16,
                ),
              ),
              ),
              ),
              // ignore: deprecated_member_use
              Expanded(child: FlatButton(
                onPressed: (){}, 
                child: Text("Description"),))
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}