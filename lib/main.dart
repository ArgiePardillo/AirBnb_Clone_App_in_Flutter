import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pardillo_resort/routes/login.dart';



void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor:Colors.transparent, // navigation bar color
        statusBarColor:Color(0xAA00A699), // status bar color
      )
  );
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home : const LoginPage(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                color: Colors.white
            ),
            fontFamily: 'Poppins'
        ),
      )
  );
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override

  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
