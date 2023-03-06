import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';

class hasilPivot extends StatelessWidget {
  const hasilPivot ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Hasil Pivot",textAlign: TextAlign.justify,),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        // margin: EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit:BoxFit.fill,
                                image: AssetImage('assets/images/wave1.png'),
                              )
                          ),
                        ),
                      )),
                    ),

                    Positioned(
                        right: 10,
                        width: 80,
                        height: 80,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/futsal.png')
                              )
                          ),
                        )),

                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        margin: EdgeInsets.only(top: 70),
                        child: Center(
                          child: Text("HASIL PERHITUNGAN PIVOT", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      )),
                    )
                  ],
                ),
              ),

              // Hasil

              //memberikan jarak
              SizedBox(height: 350),

              Container(
                height: 150,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit:BoxFit.fill,
                                image: AssetImage('assets/images/wave2.png'),
                              )
                          ),
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );

  }
}







