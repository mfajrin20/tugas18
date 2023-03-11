import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/Album/AlbumScreen.dart';
import 'package:tugas1/Borda/Posisi/Anchor.dart';
import 'package:tugas1/Borda/Posisi/Flank.dart';
import 'package:tugas1/Borda/Posisi/Kiper.dart';
import 'package:tugas1/Borda/Posisi/Pivot.dart';
import 'package:tugas1/DataPelatih/dataPelatih.dart';
import 'package:tugas1/DataPemain/dataPemain.dart';
import 'package:tugas1/Hasil/HasilPerhitunganPMdanBORDA.dart';
import 'package:tugas1/Home/PM.dart';
import 'package:tugas1/Home/Borda.dart';
import 'package:tugas1/Home/PemainInti.dart';
import 'package:tugas1/Home/header_drawer.dart';
import 'package:tugas1/Kriteria/kriteriaScreen.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilAnchor.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilFlank.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilKiper.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilPivot.dart';
import 'package:tugas1/ProfileMatching/Posisi/Kiper.dart';
import 'package:tugas1/ProfileMatching/Posisi/Anchor.dart';
import 'package:tugas1/ProfileMatching/Posisi/Flank.dart';
import 'package:tugas1/ProfileMatching/Posisi/Pivot.dart';
import '../Auth/Akun/Account.dart';



enum DialogsAction { yes, cancel }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
  int currentIndex =0;
  final List<Widget> body =[
    PemainInti(),
    PM(),
    Borda(),
    ProfilePage(),

  ];

class _HomePageState extends State<HomePage>{
  get headline6 => null;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
       child: Container(
        decoration:BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.2),
                  Theme.of(context).primaryColor.withOpacity(0.5),
                ]
            )
        ) ,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              //posisi home
              Positioned(
                child: Text("Beranda",
                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pop(context,MaterialPageRoute(builder: (context) => const PemainInti()));},
              ),
              ListTile(
                leading: const Icon(Icons.photo_album_outlined),
                title: const Text("Album"),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const AlbumScreen()));},
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: const Text("Kriteria"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const kriteriaScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Data Pelatih"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const dataPelatih()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Data Pemain"),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const dataPemain()));
                },
              ),

              //posisi pm
              Positioned(
                child: Text("Profile Matching",textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              ExpansionTile(
                title: Text("Input Data"),
                leading: Icon(Icons.ac_unit), //add icon
                childrenPadding: EdgeInsets.only(left:30), //children padding
                children: [
                  ListTile(
                    title: Text("Kiper"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Kiper()));
                    },
                  ),

                  ListTile(
                    title: Text("Anchor"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Anchor()));
                    },
                  ),

                  ListTile(
                    title: Text("Flank"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Flank()));
                    },
                  ),

                  ListTile(
                    title: Text("Pivot"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Pivot()));
                    },
                  ),
                ],
              ),

              ExpansionTile(
                title: Text("Hasil"),
                leading: Icon(Icons.add_circle_outline), //add icon
                childrenPadding: EdgeInsets.only(left:30), //children padding
                children: [
                  ListTile(
                    title: Text("Kiper"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilKiper()));
                    },
                  ),

                  ListTile(
                    title: Text("Anchor"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilAnchor()));
                    },
                  ),

                  ListTile(
                    title: Text("Flank"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilFlank()));
                    },
                  ),

                  ListTile(
                    title: Text("Pivot"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilPivot()));
                    },
                  ),
                ],
              ),

              //posisi borda
              Positioned(
                child: const Text("Borda",textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              ExpansionTile(
                title: Text("Perangkingan"),
                leading: Icon(Icons.group_remove_sharp), //add icon
                childrenPadding: EdgeInsets.only(left:30), //children padding
                children: [
                  ListTile(
                    title: Text("Kiper"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BordaKiper()));
                    },
                  ),

                  ListTile(
                    title: Text("Anchor"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BordaAnchor()));
                    },
                  ),

                  ListTile(
                    title: Text("Flank"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BordaFlank()));
                    },
                  ),

                  ListTile(
                    title: Text("Pivot"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BordaPivot()));
                    },
                  ),
                ],
              ),


              //posisi hasil
              Positioned(
                child: Text("Hasil",textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.receipt_long), //add icon
                title: Text("Hasil"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HasilPerhitunganPMdanBorda()));
                },
              ),

              Positioned(
                child: Text("keluar",textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                ),
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
                                 // Navigator.push(context, MaterialPageRoute(builder: (context) => const ()));
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
              ),

            ],
          ),
        ),
        ),
      ),

      //Navbar
      body: body[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
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
          Icon(Icons.person,
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

