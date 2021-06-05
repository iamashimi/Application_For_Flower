import 'package:flowerapp/constants.dart';
import 'package:flutter/material.dart';
import 'featured_flowres.dart';
import 'header_with_searchbox.dart';
import 'recomand_flowers.dart';
import 'title_with_more_btn.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn( title: "Recomended", press: () {}),
          RecomendFlowers(),
          TitleWithMoreBtn(title: "Featured Flowers", press: () {}),
          FeaturedFlowers(),
          SizedBox(height: kDefaultPadding),
          ],
      ),
    );
  }
}