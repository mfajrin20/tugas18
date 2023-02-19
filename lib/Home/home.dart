import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/Album/AlbumScreen.dart';
import 'package:tugas1/DataPemain/dataPemain.dart';
import 'package:tugas1/Home/PM.dart';
import 'package:tugas1/Home/Borda.dart';
import 'package:tugas1/Home/header_drawer.dart';
import 'package:tugas1/Screens/Login/login_screen.dart';
import 'package:tugas1/dashboard/HomeScreen.dart';

enum DialogsAction { yes, cancel }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
  int currentIndex =0;
  final List<Widget> body =[
    HomeScreen(),
    PM(),
    Borda(),


  ];
class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Futsall"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pop(context,MaterialPageRoute(builder: (context) => const HomeScreen()));},
              ),
              ListTile(
                leading: const Icon(Icons.photo_album_outlined),
                title: const Text("Album"),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const AlbumScreen()));},
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Data Pemain"),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const dataPemain()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: const Text("Kriteria"),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Profil()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.ac_unit),
                title: const Text("Pemetaan GAP"),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Profil()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_circle),
                title: const Text("Perhitungan"),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Profil()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.group_remove_sharp),
                title: const Text("Perangkingan"),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Profil()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: Text('Log Out'),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Penilaian Anda akan disimpan. Kami akan menunggu Anda kembali !'),
                          actions: <Widget>[
                            MaterialButton(
                                onPressed: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                                },
                                child: Text('Log Out',style: TextStyle(
                                    color: Color(0xFFC41A3B)),
                                )
                            ),
                            MaterialButton(
                              onPressed: () =>
                                  Navigator.of(context).pop(DialogsAction.cancel),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Color(0xFF4756DF)),
                              )
                            ),
                          ],
                        );
                      });
                },
              )
            ],
          ),
        ),
      ),

      body: body[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.lightBlueAccent,
        color : Colors.blue,
        animationDuration: Duration(milliseconds: 300),
        onTap: ontap,
        items: [
          Icon(Icons.home,
            color: Colors.white,),
          Icon(Icons.account_tree,
            color: Colors.white,),
          Icon(Icons.add_circle,
            color: Colors.white,),
        ],
      )
    );
    }
  void ontap ( int index){
    setState(() {
      currentIndex = index;
    });
  }
}

