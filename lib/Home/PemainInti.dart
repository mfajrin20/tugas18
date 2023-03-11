import 'package:flutter/material.dart';

import 'package:tugas1/Animation/FadeAnimation.dart';

class PemainInti extends StatelessWidget {
  const PemainInti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width/1,
        height: MediaQuery.of(context).size.height/1,
        child: Stack(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.2,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(255, 89, 84, 229),
                        Color.fromARGB(255, 180, 115, 203)
                      ]
                  ),
                  // borderRadius: BorderRadius.only(
                  //   bottomRight: Radius.circular(70),
                  // ),
                  //borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/PemainInti.png",
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
                height: MediaQuery.of(context).size.height/3,
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
                height: MediaQuery.of(context).size.height/3.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Positioned(
                      child: FadeAnimation(1.8, Container(
                        child: Center(
                          child: Text("PEMAIN INTI",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ) ,
                          ),
                        ),
                      )),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10,),
                          FadeAnimation(2.5, Text(
                                'Pemain inti merupakan pemain yang paling berpengaruh dalam tim, sehingga penempatannya'
                                ' harus tepat. Namun, pemilihan pemain inti seringkali menjadi masalah bagi pelatih'
                                ' Porprov Kab Dompu, terutama jika pelatih harus memilih dari sejumlah pemain'
                                ' yang memiliki kemampuan yang hampir sama dan penilaian secara subyektivitas dari pelatih.Dengan menggunakan sistem ini pelatih dapat dengan mudah '
                                ' membandingkan kemampuan pemain dengan posisi yang akan diisi, pelatih dapat memberikan nilai yang obyektif '
                                ' pada setiap pemain, sehingga dapat membantu dalam menentukan pemain yang paling tepat untuk dijadikan pemain inti.'
                            ,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              wordSpacing: 2,
                              // color: Colors.black,
                            ),
                          )
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
    );
  }
}
