import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcomeloginsignuppages/main.dart';
import 'body.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackGround(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple
                    ),
                  ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),),
              SvgPicture.asset(
                'images/signup.svg',
                height: size.height * 0.35,
              ),
              TextFieldButton(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: "Your Name",
                        border: InputBorder.none
                    ),
                  )
              ),
              TextFieldButton(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: "Password",
                        border: InputBorder.none,
                        suffixIcon: Icon(
                            Icons.visibility
                        )
                    ),
                  )
              ),
              Button(
                buttonText:"Sign Up",
                buttonTextColor:Colors.white,
                press: (){},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Do Have any account ?",style: TextStyle(color: kPrimaryColor),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text("Login",style: TextStyle(color: kPrimaryColor),)
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: size.width * 0.6,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.deepPurple,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.deepPurple,
                        height: 1.5,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialIcon(iconSrc:"images/facebook.svg"),
                    SocialIcon(iconSrc:"images/twitter.svg"),
                    SocialIcon(iconSrc:"images/google-plus.svg"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  final Widget child;

  const BackGround({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "images/signup_top.png",
            width: size.width * 0.3,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            "images/main_bottom.png",
            width: size.width * 0.25,
          ),
        ),
        child,
      ],
    );
  }
}

class TextFieldButton extends StatelessWidget {
  final Widget child;
  final String title;
  final Icon icon;
  TextFieldButton({this.child,this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 5,horizontal:15),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(29)
      ),
      child: child,
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;

  const SocialIcon({Key key, this.iconSrc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor
          ),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

