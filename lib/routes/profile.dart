
import 'package:flutter/material.dart';
import 'package:pardillo_resort/directions/accessibility.dart';
import 'package:pardillo_resort/directions/give_feedback.dart';
import 'package:pardillo_resort/directions/help_center.dart';
import 'package:pardillo_resort/directions/list_your_space.dart';
import 'package:pardillo_resort/directions/notifications.dart';
import 'package:pardillo_resort/directions/privacy_sharing.dart';
import 'package:pardillo_resort/directions/resort.dart';
import 'package:pardillo_resort/routes/personal_info.dart';


void main()=>runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Profile(),
    )
);

class Profile extends StatefulWidget {
  const Profile({super.key});


  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final textStyleState = const TextStyle(
      fontSize: 11.0,
      color: Colors.white
  );

  final textStyleTop = const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.white
  );

  final textStyle2 = const TextStyle(
      color: Colors.white

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                 Container(
                  width: 60.0,
                  height: 60.0,
                ),
                const CircleAvatar(
                  radius: 30.0, // Adjust radius as needed
                  backgroundColor: Colors.grey, // Replace with desired background color
                  child: Icon(Icons.person, size: 30, color: Colors.black87),
                ),
                const SizedBox(width: 15,),


                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    Text("Profile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black87
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ClipRRect(

            child: Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              decoration: const BoxDecoration(
                color: Colors.black12,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              width: 50,
              height: 1,
            ),
          ),
          Padding(
            padding:  const EdgeInsets.all(15),
            child: Text("Account settings".toUpperCase(),style: const TextStyle(color: Colors.grey,fontSize: 15,),),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InfoPersonnel()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Personal informations",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.person,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Notifications()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Notification",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Accessibility()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Accessibility",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.settings,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PrivacyNSharing()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Privacy and sharing",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.privacy_tip,
                  ),
                ],
              ),
            ),
          ),


          Padding(
            padding:  const EdgeInsets.all(15),
            child: Text("Hosting".toUpperCase(),style: const TextStyle(color: Colors.grey,fontSize: 15,),),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Resort()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Resort",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.beach_access,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const listYourSpace()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "List your space",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.space_dashboard,
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:  const EdgeInsets.all(15),
            child: Text("Support".toUpperCase(),style: const TextStyle(color: Colors.grey,fontSize: 15,),),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HelpCenter()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Help Center",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.help_center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GiveUsFeedback()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Give us feedback",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.feed,
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:  const EdgeInsets.all(15),
            child: Text("Log out".toUpperCase(),style: const TextStyle(color: Colors.grey,fontSize: 15,),),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            width: 50,
            height: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            ),
            onPressed: () {
              // Implement your desired action here (e.g., log out the user)
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      "Sign out",
                      style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.red, // Consider using the same color as the text for consistency
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}