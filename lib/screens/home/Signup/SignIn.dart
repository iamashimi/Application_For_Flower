import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../home_screen.dart';


class SignIn extends StatelessWidget {

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  Future<void> signin(BuildContext context) async{
      try{
        // ignore: unused_local_variable
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email.text, 
          password: _password.text);
      }catch(e){
        print(e);
      }
      print("Sign In sucessfully!!");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen())); 
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_5.jpg"),
                        fit: BoxFit.cover)
                        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SIGN IN", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
            SvgPicture.asset("assets/icons/login.svg", width: 70, height: 70),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: SvgPicture.asset("assets/icons/gmail.svg"),
                  hintText: "Enter Email:",
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
            //SizedBox(height: 2,),
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
            SizedBox(height: 2,),
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
                child: Text("SIGN IN", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),),
                onPressed: (){
                  signin(context);
                },
              ),
            )
          ],
        ),
        ),
    );
  }
}