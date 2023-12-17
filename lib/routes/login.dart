
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _inscription=false;
  BoxDecoration customDecoration ()
  {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0,2),
          color: Colors.grey.shade400,
          blurRadius: 5,
        )],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[

                const SizedBox(height: 30),

                const Icon(Icons.beach_access,
                  size: 100,
                ),

                const SizedBox(height: 10),

                const Text(
                  'Resort Revelation',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Your Ultimate Guide',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
                const  SizedBox(height: 25),
                Visibility(
                  visible: _inscription,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: customDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          border: InputBorder.none,
                          hintStyle: const TextStyle(color: Colors.black),
                          prefixIcon: Icon(Icons.person_outline,color: Constants.greenAirbnb,)
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _inscription,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: customDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Telephone",
                          border: InputBorder.none,
                          hintStyle: const TextStyle(color: Colors.black),
                          prefixIcon: Icon(Icons.smartphone,color: Constants.greenAirbnb,)
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration:  customDecoration(),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.mail_outline,color: Constants.greenAirbnb,),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: customDecoration(),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        hintStyle: const TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.lock_outline,color: Constants.greenAirbnb,)
                    ),
                  ),
                ),
                Visibility(
                  visible: !_inscription,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:30),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot password ?",style: TextStyle(color: Constants.greenAirbnb,fontSize: 12),)),
                  ),
                ),
                SizedBox(height:_inscription? 30:0 ,),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      if(!_inscription) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      }
                    });
                  },
                  splashColor: Colors.white,
                  hoverColor: Constants.greenAirbnb,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Constants.greenAirbnb,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0,2),
                          color: Colors.grey,
                          blurRadius: 5,
                        )],
                    ),
                    child: Center(child: Text(!_inscription?"Continue":"Login",style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white),)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _inscription=!_inscription;
                    });
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: InkWell(
                        child: RichText(
                          text: TextSpan(
                              text:  _inscription?"Do you have an account ? ":"New User ?",
                              style: const TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text:_inscription?"Sign in":" Create an account",
                                  style: TextStyle(color: Constants.greenAirbnb,fontWeight: FontWeight.w600, fontSize: 14),)
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
                const   SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }
}