import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';

class PM extends StatefulWidget {
  @override
  _PMState createState() => _PMState();

}
class _PMState extends State<PM> {

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
                          image: AssetImage('assets/images/layered1.png'),
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
                            child: Text("PROFILE MATCHING", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
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
                      FadeAnimation(2.5, Text('Profile matching adalah proses '
                          'mencocokkan profil individu atau kelompok dengan suatu '
                          'posisi atau kebutuhan. Proses Profile Matching yaitu proses '
                          'membandingkan antara nilai individu dengan nilai standar sehingga '
                          'dapat diketahui perbedaan nilainya (gap), semakin kecil nilai gap yang '
                          'dihasilkan maka memiliki peluang lebih besar untuk menempati suatu posisi.',
                        textAlign: TextAlign.justify, style: TextStyle(fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1)),)),
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



