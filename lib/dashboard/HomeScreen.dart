import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                          image: AssetImage('assets/images/layered2.png'),
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
                            child: Text("PEMAIN INTI",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 0,),
                      FadeAnimation(2.5, Text('Pemain inti merupakan pemain yang paling berpengaruh dalam tim, sehingga penempatannya'
                          ' harus tepat. Namun, pemilihan pemain inti seringkali menjadi masalah bagi pelatih'
                          ' Porprov Kab Dompu, terutama jika pelatih harus memilih dari sejumlah pemain'
                          ' yang memiliki kemampuan yang hampir sama dan penilaian secara subyektivitas dari pelatih.Dengan menggunakan sistem ini pelatih dapat dengan mudah '
                          ' membandingkan kemampuan pemain dengan posisi yang akan diisi, pelatih dapat memberikan nilai yang obyektif '
                          ' pada setiap pemain, sehingga dapat membantu dalam menentukan pemain yang paling tepat untuk dijadikan pemain inti.'
                        ,textAlign: TextAlign.justify, style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1)),)),
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



