import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';


class HasilPerhitunganPMdanBorda extends StatelessWidget {
  const HasilPerhitunganPMdanBorda ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Hasil Pemilihan Pemain Inti",textAlign: TextAlign.justify,),
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
                                image: AssetImage('assets/images/layered7.png'),
                              )
                          ),
                        ),
                      ),
                      ),
                    ),

                    Positioned(
                        left: 10,
                        width: 80,
                        height: 80,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/goalkeeper.png')
                              )
                          ),
                        )),
                    SizedBox(height: 500),
                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        margin: EdgeInsets.only(top: 70),
                        child: Center(
                          child: Text("HASIL PEMILIHAN PEMAIN INTI", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      )),
                    ),

                  ],
                ),
              ),

             // Hasil




              //Memberikan jarak
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
                                image: AssetImage('assets/images/layered8.png'),
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







