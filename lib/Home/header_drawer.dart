import 'package:flutter/material.dart';
import 'package:tugas1/Auth/Akun/Account.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);


  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration:BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
              ]
          )
      ) ,
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('assets/images/Manager.png',),
              ),
            ),
          ),
          const Text("Pelatih", style: TextStyle(color: Colors.black, fontSize: 6),),
          const Text("Subyetivitas, Data terstruktur", style: TextStyle(color: Colors.black, fontSize: 5),),
        ],
      ),
    );
  }
}