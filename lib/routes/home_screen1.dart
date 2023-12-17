// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../model/property.dart';
// void main()=>runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home : HomeScreen1(),
//     )
// );
//
// class HomeScreen1 extends StatefulWidget {
//   const HomeScreen1({super.key});
//
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen1> {
//   int _selectedIndex = 0;
//   final int _currentTab = 0;
//
//   final textStyleState = const TextStyle(
//       fontSize: 11.0,
//       color: Colors.white
//   );
//
//   final textStyleTop = const TextStyle(
//       fontSize: 22.0,
//       fontWeight: FontWeight.bold,
//       color: Colors.white
//   );
//
//   final textStyle2 = const TextStyle(
//       color: Colors.white
//   );
//   final List<IconData> _icons = [
//     FontAwesomeIcons.building,
//     FontAwesomeIcons.home,
//     FontAwesomeIcons.hotel,
//     FontAwesomeIcons.desktop,
//     //   FontAwesomeIcons.chair,
//   ];
//
//   Widget _buildIcon(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index;
//         });
//       },
//       child: Container(
//         height: 60,
//         width: 60,
//         decoration: BoxDecoration(
//             color: _selectedIndex == index ? Theme
//                 .of(context)
//                 .colorScheme.primary : const Color(0XFFE7EBEE),
//             borderRadius: BorderRadius.circular(30)
//         ),
//         child: Icon(_icons[index],
//           size: 25,
//           color: _selectedIndex == index
//               ? Colors.white // Theme.of(context).accentColor
//               : const Color(0XFFB4C1C4),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//           padding: const EdgeInsets.symmetric(vertical: 30),
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(left: 20, right: 120),
//               child: Text("What are you looking for ?",
//                 style: TextStyle(
//                     fontSize: 30.0, fontWeight: FontWeight.bold
//                 ),
//               ),
//             ),
//             const   SizedBox(height: 20,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children:
//               _icons
//                   .asMap()
//                   .entries
//                   .map((MapEntry map) => _buildIcon(map.key)
//               )
//                   .toList(),
//             ),
//             const  SizedBox(height: 20,),
//             // TopWilaya(),
//             // //  TopWilaya(),
//           ],
//         )
//     );
//   }
//
//   /* _buildBottomCard() {
//     return Expanded(
//       child: Container(
//       child: Stack(
//         children: <Widget>[
//           Transform.translate(
//             offset:Offset(50,70),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40.0),
//                 )
//               ),
//               child: Padding(
//               padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Text(
//                         "Mes locaux",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 24.0
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     Container(
//                       width: 300,
//                       height: 300,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         children: [
//                           item(Constants.properties[0]),
//                           item(Constants.properties[1]),
//                           item(Constants.properties[2]),
//                         ],
//                       ),
//                     )
//                   ],
//                 )
//                 ),
//               ),
//             ),
//           Align(
//             alignment: Alignment(0.8, -0.8),
//             child: Container(
//               width: 50,
//               height: 50,
//               child: Icon(Icons.edit,color: Colors.white,),
//               decoration: BoxDecoration(
//                 color: Colors.pink,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.pink.withOpacity(0.4),
//                     spreadRadius: 1.0,
//                     blurRadius: 3.0
//                   )
//                 ],
//                 borderRadius: BorderRadius.circular(10.0)
//               ),
//             ),
//           )
//         ],
//       ),
//       ),
//     );
//   }*/
//   item(Property p) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       width: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(40.0),
//         color: Colors.red,
//         image: DecorationImage(
//             image: AssetImage(p.images[0]),
//             fit: BoxFit.cover
//         ),
//       ),
//       child: Align(
//         alignment: Alignment.bottomCenter,
//         child: Container(
//           height: 130,
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(40),
//               topRight: Radius.circular(40),
//             ),
//             color: Colors.white,
//           ),
//           child: Padding(padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children:[
//                 Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Text(p.title, style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.all(4.0),
//                       width: 25.0,
//                       height: 25.0,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(p.images[1]),
//                               fit: BoxFit.cover
//                           ),
//                           borderRadius: BorderRadius.circular(5)
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.all(4.0),
//                       width: 25.0,
//                       height: 25.0,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(p.images[1]),
//                               fit: BoxFit.cover
//                           ),
//                           borderRadius: BorderRadius.circular(5)
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.all(4.0),
//                       width: 25.0,
//                       height: 25.0,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(p.images[0]),
//                               fit: BoxFit.cover
//                           ),
//                           borderRadius: BorderRadius.circular(5)
//                       ),
//                     ),
//                     const Spacer(),
//                     const Icon(Icons.thumb_up, size: 20, color: Colors.grey,
//                     ),
//                     const Text("100", style: TextStyle(color: Colors.grey),
//                     ),
//                   ],
//                 )
//               ],
//             ),),
//         ),
//       ),
//     );
//   }
// }