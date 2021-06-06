import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class  SignUp extends StatelessWidget {

TextEditingController _email = new TextEditingController();
TextEditingController _password = new TextEditingController();
TextEditingController _user = new TextEditingController();

Future<void> sigup() async{
          try{
            // ignore: unused_local_variable
            UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: _email.text, 
              password: _password.text,);
          }catch(e){
               print(e);
          }
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_5.jpg"),
                        fit: BoxFit.cover)
                        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
            Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
                decoration: InputDecoration(
                  icon: SvgPicture.asset("assets/icons/profile-user.svg"),
                  hintText: "Enter User name:",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                controller: _user,
              ),
              decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                          ),
                         ),
            //SizedBox(height: 1,),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: SvgPicture.asset("assets/icons/gmail.svg"),
                  hintText: "Enter Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                controller: _email,
              ),
              decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                          ),
            ),
            //SizedBox(height: 1,),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: SvgPicture.asset("assets/icons/lock.svg"),
                  hintText: "Enter Password:",
                  suffixIcon: Icon(Icons.visibility, color: kButtonColour,),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                controller: _password,
              ),
              decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                          ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 70,
              width: 150,
              padding: EdgeInsets.all(10),
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
                 ),
                 color: kButtonColour,
                child: Text("SIGN UP", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),),
                onPressed: (){
                  sigup();
                },
              ),
            )
          ],
        ),),
    );
  }
}