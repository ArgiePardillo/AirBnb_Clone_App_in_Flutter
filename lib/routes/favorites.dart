
import 'package:flutter/material.dart';

void main()=>runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Favorite(),
    )
);

class Favorite extends StatefulWidget {
  const Favorite({super.key});


  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  // final textStyleState = const TextStyle(
  //     fontSize: 11.0,
  //     color: Colors.white
  // );
  //
  // final textStyleTop = const TextStyle(
  //     fontSize: 22.0,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.white
  // );
  //
  // final textStyle2 = const TextStyle(
  //     color: Colors.white
  //
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Favorite",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87
                    ),),
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
            child: Text("Favorite Resorts".toUpperCase(),style: const TextStyle(color: Colors.grey,fontSize: 15,),),
          ),

        ],
      ),
    );
  }
}