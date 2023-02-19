// import 'package:flutter/material.dart';
// import 'package:tugas1/Animation/FadeAnimation.dart';
// class Profile extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }
// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   height: 400,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage('assets/images/background.png'),
//                           fit: BoxFit.fill
//                       )
//                   ),
//                   child: Stack(
//                     children: <Widget>[
//                       Positioned(
//                         left: 30,
//                         width: 80,
//                         height: 200,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('assets/images/light-1.png')
//                               )
//                           ),
//                         )),
//
//                       Positioned(
//                         left: 140,
//                         width: 80,
//                         height: 150,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('assets/images/light-2.png')
//                               )
//                           ),
//                         )),
//
//                       Positioned(
//                         right: 40,
//                         top: 40,
//                         width: 80,
//                         height: 150,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('assets/images/clock.png')
//                               )
//                           ),
//                         )),
//
//                       Positioned(
//                         child: FadeAnimation(1.6, Container(
//                           margin: EdgeInsets.only(top: 50),
//                           child: Center(
//                             child: Text("TERIMAKASIH", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
//                           ),
//                         )),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(30.0),
//                   child: Column(
//                     children: <Widget>[
//                       FadeAnimation(1.8, Container(
//                         padding: EdgeInsets.all(5),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Color.fromRGBO(143, 148, 251, .2),
//                                   blurRadius: 20.0,
//                                   offset: Offset(0, 10)
//                               )
//                             ]
//                         ),
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: EdgeInsets.all(8.0),
//                               decoration: BoxDecoration(
//                                   //border: Border(bottom: BorderSide(color: Colors.grey[100]))
//                               ),
//                               child: TextField(
//                                 decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: "Email or Phone number",
//                                     hintStyle: TextStyle(color: Colors.grey[400])
//                                 ),
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       )),
//                       SizedBox(height: 30,),
//
//
//                     ],
//          ),
//          )
//             ],
//            ),
//           ),
//          )
//     );
//   }
// }
//
//
