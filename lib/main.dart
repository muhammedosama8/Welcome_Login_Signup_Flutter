import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/login.dart';
import 'screens/signup.dart';

void main() {
  runApp(MyApp());
}
const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      initialRoute: '/welcome',
      routes:{
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
      } ,
    );
  }
}