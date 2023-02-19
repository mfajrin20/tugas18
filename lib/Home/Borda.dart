import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';

class Borda extends StatefulWidget {
  @override
  _BordaState createState() => _BordaState();
}
class _BordaState extends State<Borda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/layered3.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/light-1.png')
                                )
                            ),
                          )),

                      Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/light-2.png')
                                )
                            ),
                          )),

                      Positioned(
                          right: 40,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/bola1.png')
                                )
                            ),
                          )),

                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("BORDA", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10,),
                      FadeAnimation(2.5, Text('Metode Borda adalah metode yang setiap anggota '
                          'kelompok memberikan nilai atau skor pada setiap alternatif yang '
                          'dipertimbangkan, lalu skor tersebut dijumlahkan untuk menentukan '
                          'alternatif yang paling baik. Alternatif dengan skor tertinggi akan'
                          ' dianggap sebagai pilihan yang terbaik.',
                        textAlign: TextAlign.justify, style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1)),)),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}



