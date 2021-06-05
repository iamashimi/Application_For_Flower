import 'package:flutter/material.dart';
import '../../../constants.dart';

class RecomendFlowers extends StatelessWidget {
  const RecomendFlowers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlatCard(
            country: 'Sri Lanka', 
            image: 'assets/images/image_1.jpg',  
            price: 750, 
            title: 'Rose',
            press: () {},
            ),
          RecomendPlatCard(
            country: 'Canada', 
            image: 'assets/images/image_2.png', 
            price: 750, 
            title: 'Lily',
            press: () {}, 
            ),
          RecomendPlatCard(
            country: 'Australia', 
            image: 'assets/images/image_3.jpg', 
            price: 750, 
            title: 'BSpread',
            press: () {}, 
            ),
          RecomendPlatCard(
            country: 'Sri Lanka', 
            image: 'assets/images/image_1.jpg',  
            price: 750, 
            title: 'Rose',
            press: () {},
            ),
        ],
      ),
    );
  }
}

class RecomendPlatCard extends StatelessWidget {
  const RecomendPlatCard({
    Key? key, 
    required this.image, 
    required this.title, 
    required this.country, 
    required this.price, 
    required this.press, 
  }) : super(key: key);

final String image, title, country;
final int price;
final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
            left: kDefaultPadding, 
            top: kDefaultPadding/2,
            bottom: kDefaultPadding * 2.5,
            ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
        Image.asset(image),
        GestureDetector(
          onTap: press(),
          child: Container(  
            padding: EdgeInsets.all(kDefaultPadding/2),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23),
              ),
              ],
              ),
          child: Row(
            children: <Widget>[
            RichText(
              text: TextSpan(
                children:[TextSpan(
                  text: "$title\n".toUpperCase(), 
                  style: Theme.of(context).textTheme.button
                  ),
                  TextSpan(text: "$country".toUpperCase(),
                   style: TextStyle(
                     color: kButtonColour.withOpacity(0.5),
                  ),
                  ),
                  ],
             ),
            ),
           Text(
             '\Rs.$price',
             style: Theme.of(context)
             .textTheme
             .button!
             .copyWith(color: kTextColor),
           )
           ],
           ),
          ),
        )
       ],
      ),
      );
  }
}