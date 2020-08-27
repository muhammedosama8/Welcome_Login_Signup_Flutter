import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcomeloginsignuppages/main.dart';
import 'body.dart';

class LoginScreen extends StatelessWidget {
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
                  "Log In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurple
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),),
              SvgPicture.asset(
                'images/login.svg',
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
                buttonText:"Login",
                buttonTextColor:Colors.white,
                press: (){},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't Have any account ?",style: TextStyle(color: kPrimaryColor),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                  GestureDetector(
                    onTap: (){
//                      Navigator.push(context, MaterialPageRoute(builder: (context){return SignupScreen();}));
                      Navigator.pushNamed(context, '/signup');
                    },
                      child: Text("Sign Up",style: TextStyle(color: kPrimaryColor),)
                  ),
                ],
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
            "images/main_top.png",
            width: size.width * 0.3,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset(
            "images/login_bottom.png",
            width: size.width * 0.4,
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
