import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';


class Borda extends StatelessWidget {
  const Borda ({Key? key}) : super(key: key);
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
                height: MediaQuery.of(context).size.height/3.0,
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
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  ),
                ),

                child: Center(
                  child: Image.asset(
                    "assets/images/Borda.png",
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
                    // topLeft: Radius.circular(90),
                    topRight: Radius.circular(90),
                  ),
                ),

                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Positioned(
                      child: FadeAnimation(1.8, Container(
                        child: Center(
                          child: Text("BORDA",
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
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(2.5, Text(
                            'Metode Borda adalah metode yang setiap anggota '
                            'kelompok memberikan nilai atau skor pada setiap alternatif yang '
                            'dipertimbangkan, lalu skor tersebut dijumlahkan untuk menentukan '
                            'alternatif yang paling baik. Alternatif dengan skor tertinggi akan'
                            ' dianggap sebagai pilihan yang terbaik.'
                          ,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.5,
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
