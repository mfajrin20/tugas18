import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:tugas1/DataPelatih/inputDataPelatih.dart';


class dataPelatih extends StatelessWidget {

  const dataPelatih ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Data Pelatih",textAlign: TextAlign.justify,),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/layered5.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 20,
                          top: 20,
                          width: 120,
                          height: 120,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit:BoxFit.fill,
                                  image: AssetImage('assets/images/team.png'),
                                )
                            ),
                          )),

                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Center(
                            child: Text("DATA PELATIH",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
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
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.blueAccent,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => const inputDataPelatih()));
          },
          backgroundColor: Colors.white,
        ),

    );
  }
}



