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
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            padding: EdgeInsets.all(2),
            child: TextFormField(
                decoration: InputDecoration(
                  icon: SvgPicture.asset("assets/icons/user-icon.svg"),
                  labelText: "Enter User name:",
                  hintText: "Username",
                ),
                controller: _user,
              ),
              decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 15),
                                blurRadius: 22,
                                color: kButtonColour.withOpacity(0.96) 
                             ),
                             ]
                          ),
                         ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.all(2),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: SvgPicture.asset("assets/icons/user-icon.svg"),
                  labelText: "Enter Email:",
                  hintText: "Your Email"
                ),
                controller: _email,
              ),
              decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 15),
                                blurRadius: 22,
                                color: kButtonColour.withOpacity(0.96) 
                             ),
                             ]
                          ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.all(2),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: SvgPicture.asset("assets/icons/user-icon.svg"),
                  labelText: "Enter Password:",
                  hintText: "Password"
                ),
                controller: _password,
              ),
              decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 15),
                                blurRadius: 22,
                                color: kButtonColour.withOpacity(0.96) 
                             ),
                             ]
                          ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 70,
              width: 150,
              padding: EdgeInsets.all(5),
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20),
                 ),
                 color: kButtonColour,
                child: Text("Sign Up", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
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