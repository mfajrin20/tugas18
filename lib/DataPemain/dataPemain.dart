import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:tugas1/DataPemain/AddDataPemain.dart';



class dataPemain extends StatelessWidget {
  const dataPemain ({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {

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
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/8,
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
                    child: Container(
                      child: FadeAnimation(1.3, Container(
                        child: Center(
                          child: Text("DATA PEMAIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ) ,
                          ),
                        ),
                      )),
                    ),
                  ),

                ],
                ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     height: MediaQuery.of(context).size.height/3,
                //     decoration: BoxDecoration(
                //       gradient: new LinearGradient(
                //           colors: [
                //             Color.fromARGB(255, 89, 84, 229),
                //             Color.fromARGB(255, 180, 115, 203)
                //           ]
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

        ),
        floatingActionButton: FloatingActionButton(
          child: Container(
            width: 50,
            height: 50,
            child: Icon(
              Icons.add,
              size: 40,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient
                  (colors: [
                  Color.fromARGB(255, 89, 84, 229),
                  Color.fromARGB(255, 180, 115, 203)
                ])
            ),
          ),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const inputDataPemain()));
          },
        )
    );
  }
}