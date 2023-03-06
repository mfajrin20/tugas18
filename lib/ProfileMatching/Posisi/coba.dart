// import 'package:flutter/material.dart';
// import 'package:tugas1/Album/AlbumScreen.dart';
// import 'package:tugas1/Kriteria/kriteriaScreen.dart';
// import 'package:tugas1/ProfileMatching/InputData.dart';
//
//
// class coba extends StatelessWidget {
//   const coba ({Key? key}) : super(key: key);
//
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//
//       initialIndex: 1,
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text("Input Data Pemain",textAlign: TextAlign.justify,),
//           bottom: const TabBar(
//             tabs: <Widget>[
//               Tab(
//                 icon: Icon(Icons.dataset),
//                 text: 'Input data',
//               ),
//               Tab(
//                 icon: Icon(Icons.calculate_outlined),
//                 text: 'Perhitungan',
//               ),
//               Tab(
//                 icon: Icon(Icons.summarize_outlined),
//                 text: 'Hasil',
//               ),
//             ],
//
//           ),
//         ),
//         body: const TabBarView(
//           children: <Widget>[
//             InputData(),
//             AlbumScreen(),
//             kriteriaScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }
