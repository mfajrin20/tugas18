import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:flutter/rendering.dart';

class kriteriaScreen extends StatelessWidget {
  const kriteriaScreen ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Kriteria Pemain",textAlign: TextAlign.justify,),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/layered6.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit:BoxFit.fill,
                                  image: AssetImage('assets/images/onbord3.png',
                                  )
                              )
                          ),
                        )
                        ),
                       ),
                    ],
                  ),
                ),
                Positioned(
                  child: FadeAnimation(1.6, Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text("KRITERIA PEMAIN",
                        // textAlign: TextAlign.justify,
                        style: TextStyle( color: Colors.black54, fontSize: 40, fontWeight: FontWeight.bold),),
                    ),
                  )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: DataTable(
                      columnSpacing: 10,
                      horizontalMargin: 10,
                      columns: [
                        DataColumn(label: Text('Posisi',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                        DataColumn(label: Text('Teknik Da'
    'sar',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                        DataColumn(label: Text('Skill',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                        DataColumn(label: Text('Individual Defend',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                        DataColumn(label: Text('Postur',style: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                      ],
                      rows: <DataRow>[
                            DataRow(cells: <DataCell> [
                            DataCell(Text('Kiper',style: TextStyle(color: Colors.black54, fontSize: 10), )),
                              DataCell(Text('Body Shape, Distribusi, Tangkapan, Shoot Stooping',style: TextStyle(color: Colors.black54, fontSize: 10), )),
                              DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10), )),
                              DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                              DataCell(Text('Tinggi Badan , Berat Badan',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                          ],
                            ),
                          DataRow(cells: <DataCell> [
                          DataCell(Text('Anchor',style: TextStyle(color: Colors.black54, fontSize: 10, ),)),
                            DataCell(Text('Pasing, Control',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('-',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                        ],
                        ),
                        DataRow(cells: <DataCell> [
                          DataCell(Text('Flank',style: TextStyle(color: Colors.black54, fontSize: 10,), )),
                            DataCell(Text('Shooting, Dribble, Agility',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('-',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                        ],
                        ),
                        DataRow(cells: <DataCell> [
                          DataCell(Text('Pivot',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('Control, Shooting',style: TextStyle(color: Colors.black54, fontSize: 10,), )),
                            DataCell(Text('Team Work, Mental, Intelegency, Visi Misi bertanding',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('Intersept, Body Shape, Fighting Spirit, Edurance, Fisik',style: TextStyle(color: Colors.black54, fontSize: 10, ), )),
                            DataCell(Text('-',style: TextStyle(color: Colors.black54, fontSize: 10, ),)),
                        ],
                        ),
                      ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}



