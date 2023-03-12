import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:tugas1/Kriteria/KriteriaFlank.dart';


class KriteriaAnchor extends StatelessWidget {
  const KriteriaAnchor ({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 89, 84, 229),
                  Color.fromARGB(255, 180, 115, 203)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
        ),
      ),
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
                                ],
                                rows: <DataRow>[
                                  DataRow(cells: <DataCell> [
                                    DataCell(Text('Pasing, Control',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        wordSpacing: 1,
                                      ), )),
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
                                  ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => KriteriaFlank()));
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                            textColor: Colors.white,
                            padding: const EdgeInsets.all(0),
                            child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                width: 80.0 ,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.0),
                                    gradient: new LinearGradient(
                                        colors: [
                                          Color.fromARGB(255, 89, 84, 229),
                                          Color.fromARGB(255, 180, 115, 203)
                                        ]
                                    )
                                ),
                                padding: const EdgeInsets.all(0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.arrow_forward),
                                  ],
                                )
                            ),
                          ),
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
// import 'package:carousel_slider/carousel_slider.dart';
//
//
// class KriteriaAnchor extends StatelessWidget {
//   const KriteriaAnchor ({Key? key}) : super(key: key);
//   @override
//
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     final CarouselController _controller = CarouselController();
//
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 89, 84, 229),
//                   Color.fromARGB(255, 180, 115, 203)
//                 ],
//                 begin: const FractionalOffset(0.0, 0.0),
//                 end: const FractionalOffset(1.0, 0.0),
//                 stops: [0.0, 1.0],
//                 tileMode: TileMode.clamp
//             ),
//           ),
//         ),
//       ),
//       body: Material(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Stack(children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   decoration: BoxDecoration(
//                     gradient: new LinearGradient(
//                         colors: [
//                           Color.fromARGB(255, 89, 84, 229),
//                           Color.fromARGB(255, 180, 115, 203)
//                         ]
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(200),
//                     ),
//                   ),
//                 ),
//               ],
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height/3.5,
//                   decoration: BoxDecoration(
//                     gradient: new LinearGradient(
//                         colors: [
//                           Color.fromARGB(255, 89, 84, 229),
//                           Color.fromARGB(255, 180, 115, 203)
//                         ]
//                     ),
//                   ),
//                 ),
//               ),
//
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height/1.6,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(200),
//                     ),
//                   ),
//                   padding: EdgeInsets.all(20.0),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 40),
//                       Positioned(
//                         child: FadeAnimation(1.8, Container(
//                           child: Center(
//                             child: Text("ALBUM PEMAIN",
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.w600,
//                                 letterSpacing: 1,
//                                 wordSpacing: 1,
//                               ) ,
//                             ),
//                           ),
//                         )),
//                       ),
//                       // Padding(
//                       //   padding: EdgeInsets.all(5.0),
//                       //
//                       // ),
//                       Padding(
//                         padding: EdgeInsets.all(0.0),
//                         child: Column(
//                           children: <Widget>[
//                             FadeAnimation(2.5,
//                               DataTable(
//                                 columnSpacing: 10,
//                                 horizontalMargin: 10,
//                                 columns: [
//                                   DataColumn(label: Text('Posisi',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
//                                   ),
//                                   DataColumn(label: Text('Teknik Da'
//                                       'sar',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
//                                   ),
//                                   DataColumn(label: Text('Skill',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
//                                   ),
//                                   DataColumn(label: Text('Individual Defend',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
//                                   ),
//                                   DataColumn(label: Text('Postur',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
//                                   ),
//                                 ],
//                                 rows: <DataRow>[
//                                   DataRow(cells: <DataCell> [
//                                     DataCell(Text('Kiper',style: TextStyle(color: Colors.black54, fontSize: 10), )),
//                                     DataCell(Text('Body Shape, Distribusi, Tangkapan, Shoot Stooping',style: TextStyle(color: Colors.black54, fontSize: 10), )),
//                                     DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10), )),
//                                     DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('Tinggi Badan , Berat Badan',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                   ],
//                                   ),
//                                   DataRow(cells: <DataCell> [
//                                     DataCell(Text('Anchor',style: TextStyle(color: Colors.black54, fontSize: 10, ),)),
//                                     DataCell(Text('Pasing, Control',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('-',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                   ],
//                                   ),
//                                   DataRow(cells: <DataCell> [
//                                     DataCell(Text('Flank',style: TextStyle(color: Colors.black54, fontSize: 10,), )),
//                                     DataCell(Text('Shooting, Dribble, Agility',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('-',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                   ],
//                                   ),
//                                   DataRow(cells: <DataCell> [
//                                     DataCell(Text('Pivot',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('Control, Shooting',style: TextStyle(color: Colors.black54, fontSize: 10,), )),
//                                     DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
//                                     DataCell(Text('-',style: TextStyle(color: Colors.black54, fontSize: 10, ),)),
//                                   ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }