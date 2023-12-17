
import 'package:flutter/material.dart';
import 'package:pardillo_resort/routes/favorites.dart';
import 'package:pardillo_resort/routes/profile.dart';
import '../constants/constants.dart';
import 'home_screen.dart';
import 'messages.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState()  => HomePageState();
}

void main() => runApp(
  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const HomePage(),
      theme: ThemeData(
          primaryColor: Constants.greenAirbnb,
          hintColor: Constants.redAirbnb,
          scaffoldBackgroundColor: Colors.orange[400]
      )
  ),
);


class HomePageState extends State<HomePage> {
  int _currentTab=0;
  final List<StatefulWidget> _children=[const HomeScreen(),const Favorite(),const Messages(),const Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE7EBEE),
      body: SafeArea(
        child: _children[_currentTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: Constants.greenAirbnb,
        unselectedItemColor: Colors.grey[800],
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentTab=value;
          });
        },
        currentIndex: _currentTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),

            label: 'Explore', // Add a string label here
            activeIcon: Text("EXPLORER",style: TextStyle(fontSize: 11),),

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              //color: Colors.black,
              size: 30,
            ),
            label: 'Favourites', // Add a string label here
            activeIcon: Text("LIKES",style: TextStyle(fontSize: 11),),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,

              size: 30,
            ),
            label: 'Messages', // Add a string label here
            activeIcon: Text("MESSAGES",style: TextStyle(fontSize: 11),),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,

              size: 30,
            ),
            label: 'Profile', // Add a string label here
            activeIcon: Text("PROFILE",style: TextStyle(fontSize: 11),),
          )
        ],
      ),
    );
  }
}