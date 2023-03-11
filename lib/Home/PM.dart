import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';


class PM extends StatelessWidget {
  const PM ({Key? key}) : super(key: key);
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
                  //   bottomLeft: Radius.circular(70),
                  // ),
                  //borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                ),

                child: Center(
                  child: Image.asset(
                    "assets/images/PM.png",
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
                    topRight: Radius.circular(90),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Positioned(
                      child: FadeAnimation(1.8, Container(
                        child: Center(
                          child: Text("PROFILE MATCHING",
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
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10,),
                          FadeAnimation(2.5, Text('Profile matching adalah proses '
                              'mencocokkan profil individu atau kelompok dengan suatu '
                              'posisi atau kebutuhan. Proses Profile Matching yaitu proses '
                              'membandingkan antara nilai individu dengan nilai standar sehingga '
                              'dapat diketahui perbedaan nilainya (gap), semakin kecil nilai gap yang '
                              'dihasilkan maka memiliki peluang lebih besar untuk menempati suatu posisi.',
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

