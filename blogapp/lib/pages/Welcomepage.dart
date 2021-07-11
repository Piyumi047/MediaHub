import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white,Colors.lightBlueAccent],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0 ,1.0],
            tileMode: TileMode.repeated,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40.0),
            child: Column(
              children: [
                Text("MediaHub",style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),),
                SizedBox(height: MediaQuery.of(context).size.height/6,),
                Text("Easy way to Gain Knowledge",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 20,),
                boxcontainer("assets/google.png","Sign Up with Google"),
                SizedBox(height: 20,),
                boxcontainer("assets/facebook.jpeg","Sign Up with Facebook"),
                SizedBox(height: 20,),
                boxcontainer("assets/email.jpeg","Sign Up with Email"),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?  ", style: TextStyle(fontSize: 16,color: Colors.grey),),
                    Text("Sign in", style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueGrey),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget boxcontainer(String path, String text){
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Image.asset(path, height: 25, width: 25,),
              SizedBox(width: 20,),
              Text(
                text,
                style: TextStyle(fontSize: 16,color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}

