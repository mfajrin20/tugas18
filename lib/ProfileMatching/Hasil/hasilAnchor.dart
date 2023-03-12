import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';

class hasilAnchor extends StatelessWidget {
  const hasilAnchor ({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 89, 84, 229),
                          Color.fromARGB(255, 180, 115, 203)
                        ]
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 89, 84, 229),
                          Color.fromARGB(255, 180, 115, 203)
                        ]
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/Anchor.png",
                      scale: 0.8,
                    ),
                  ),
                ),
              ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3.5,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 89, 84, 229),
                          Color.fromARGB(255, 180, 115, 203)
                        ]
                    ),
                  ),
                ),

              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(200),
                    ),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Positioned(
                        child: FadeAnimation(1.8, Container(
                          child: Center(
                            child: Text("ANCHOR",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                wordSpacing: 1,
                              ) ,
                            ),
                          ),
                        )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            FadeAnimation(2.5,
                              DataTable(
                                columnSpacing: 10,
                                horizontalMargin: 10,
                                columns: [
                                  DataColumn(label: Text('Teknik',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  ),
                                  DataColumn(label: Text('Skill',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  ),
                                  DataColumn(label: Text('Individual ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                      wordSpacing: 1,
                                    ),
                                  ),
                                  ),
                                  DataColumn(label: Text('Postur',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  ),
                                ],
                                rows: <DataRow>[
                                  DataRow(cells: <DataCell> [
                                    DataCell(Text('Body Shape, Distribusi, Tangkapan, Shoot Stooping',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        wordSpacing: 1,
                                      ),)),
                                    DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        wordSpacing: 1,
                                      ), )),
                                    DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        wordSpacing: 1,
                                      ), )),
                                    DataCell(Text('Tinggi Badan , Berat Badan',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        wordSpacing: 1,
                                      ), )),
                                  ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:tugas1/Animation/FadeAnimation.dart';
//
// class hasilAnchor extends StatelessWidget {
//   const hasilAnchor ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 height: 150,
//                 child: Stack(
//                   children: <Widget>[
//                     Positioned(
//                       child: FadeAnimation(1.6, Container(
//                         // margin: EdgeInsets.only(top: 20),
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit:BoxFit.fill,
//                                 image: AssetImage('assets/images/wave1.png'),
//                               )
//                           ),
//                         ),
//                       )),
//                     ),
//
//                     Positioned(
//                         right: 10,
//                         width: 80,
//                         height: 80,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('assets/images/futsal1.png')
//                               )
//                           ),
//                         )),
//
//                     Positioned(
//                       child: FadeAnimation(1.6, Container(
//                         margin: EdgeInsets.only(top: 70),
//                         child: Center(
//                           child: Text("HASIL PERHITUNGAN ANCHOR", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
//                         ),
//                       )),
//                     )
//                   ],
//                 ),
//               ),
//
//               // Hasil
//
//               //memberikan jarak
//               SizedBox(height: 350),
//
//
//               Container(
//                 height: 150,
//                 child: Stack(
//                   children: <Widget>[
//                     Positioned(
//                       child: FadeAnimation(1.6, Container(
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit:BoxFit.fill,
//                                 image: AssetImage('assets/images/wave2.png'),
//                               )
//                           ),
//                         ),
//                       )),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//
//     );
//
//   }
// }
//
//
//
//
//
//
//
