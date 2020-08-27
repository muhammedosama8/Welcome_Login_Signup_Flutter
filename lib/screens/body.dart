import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:welcomeloginsignuppages/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
                "images/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * .03,),
            Button(
              buttonText:"Login",
              buttonTextColor:Colors.white,
              press: (){
                Navigator.pushNamed(context, '/login');
              },
            ),
            Button(
              buttonColor: kPrimaryLightColor,
              buttonText:"Signup",
              buttonTextColor:Colors.black54,
              press: (){
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String buttonText;
  final Color buttonColor,buttonTextColor;
  final Function press;
  const Button({
    Key key,
    this.buttonColor = kPrimaryColor,
    this.buttonText,
    this.buttonTextColor,
    this.press
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width* 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
          onPressed: press,
          child: Text(buttonText,style: TextStyle(color: buttonTextColor),),
          color: buttonColor
        ),
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  final Widget child;
  BackGround({this.child});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "images/main_top.png",
              width: size.width * .3,
            ),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: Image.asset(
              "images/main_bottom.png",
              width: size.width * .3,
            ),
            bottom: 0,
            left: 0,
            width: size.width * .3,
          ),
          child,
        ],
      ),
    );
  }
}