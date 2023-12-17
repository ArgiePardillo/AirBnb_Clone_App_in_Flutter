
import 'package:flutter/material.dart';
import 'package:pardillo_resort/routes/search_screen.dart';

import '../constants/constants.dart';
void main()=>runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomeScreen(),
    )
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50,),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchScreen()),
                  );
                },
                splashColor: Colors.white,
                hoverColor: Constants.greenAirbnb,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black87),),
                  child: const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.search),
                        Text("Location, tourist site",style:TextStyle(fontSize: 13,color: Colors.black54),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const   SizedBox(height: 80,),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: Stack(
              //     children:[
              //       Container(
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(5),
              //         ),
              //         child: Image.asset("assets/images/landing_page_img.png",fit: BoxFit.scaleDown,),
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           SizedBox(height: 20,),
              //           Center(child: Text("Explore",style:TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white))),
              //           Center(child: Text("Algeria",style:TextStyle(fontSize: 20,color: Colors.white))),
              //         ],
              //       ),
              //       Positioned(
              //         top: 0,
              //         bottom: 0,
              //         left: 0,
              //         right: 0,
              //
              //         child: MaterialButton(
              //           onPressed: (){
              //             /*  Navigator.push(
              //                   context,
              //                   MaterialPageRoute(builder: (context) => Photo()),
              //                 );*/
              //           },
              //           elevation: 3,
              //           child: Container(
              //               padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
              //               margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //                 color: Colors.white,
              //               ),
              //               child: Text("Explore",style: TextStyle(color: Colors.red),)),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
  Padding buildScrollActivities(String text,String imgUri){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
              color: Colors.white,
              height: 250,
              width: 350,
              child: Image.asset(imgUri,fit: BoxFit.fill,)
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Text(text,style: const TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold
            ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}