import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:tugas1/Kriteria/KriteriaKiper.dart';


class KriteriaScreen extends StatelessWidget {
  const KriteriaScreen ({Key? key}) : super(key: key);
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
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 89, 84, 229),
                          Color.fromARGB(255, 180, 115, 203)
                        ]
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90),
                    ),
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/football1.png",
                      scale: 0.8,
                    ),
                  ),
                ),
                Positioned(
                  child: FadeAnimation(1.8, Container(
                    child: Center(
                      child: Text("KRITERIA PARA PEMAIN",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ) ,
                      ),
                    ),
                  )),
                ),
              ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                         Colors.white
                        ]
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 120),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => KriteriaKiper()));
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.5,
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
                          Text('Mulai ',
                            style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ), ),
                          Icon(Icons.arrow_forward),
                        ],
                      )
                  ),
                  ),
                ),
              ),
              // Container(

              // ),

            ],
          ),
        ),

      ),
    );
  }
}