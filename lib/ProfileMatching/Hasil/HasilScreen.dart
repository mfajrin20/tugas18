import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/Album/AlbumScreen.dart';
import 'package:tugas1/Auth/Akun/Account.dart';
import 'package:tugas1/Borda/Posisi/Anchor.dart';
import 'package:tugas1/Borda/Posisi/Flank.dart';
import 'package:tugas1/Borda/Posisi/Kiper.dart';
import 'package:tugas1/Borda/Posisi/Pivot.dart';
import 'package:tugas1/DataPelatih/dataPelatih.dart';
import 'package:tugas1/DataPemain/dataPemain.dart';
import 'package:tugas1/Hasil/HasilPerhitunganPMdanBORDA.dart';
import 'package:tugas1/Home/PemainInti.dart';
import 'package:tugas1/Home/home.dart';
import 'package:tugas1/Kriteria/kriteriaScreen.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilAnchor.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilFlank.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilKiper.dart';
import 'package:tugas1/ProfileMatching/Hasil/hasilPivot.dart';
import 'package:tugas1/ProfileMatching/Posisi/Kiper.dart';
import 'package:tugas1/ProfileMatching/Posisi/Anchor.dart';
import 'package:tugas1/ProfileMatching/Posisi/Flank.dart';
import 'package:tugas1/ProfileMatching/Posisi/Pivot.dart';
import 'package:tabler_icons/tabler_icons.dart';



enum DialogsAction { yes, cancel }

class HasilScreen extends StatefulWidget {
  const HasilScreen({Key? key}) : super(key: key);
  @override
  _HasilScreenState createState() => _HasilScreenState();
}
int currentIndex =1;
final List<Widget> body =[
  hasilKiper(),
  hasilAnchor(),
  hasilFlank(),
  hasilPivot(),


];

class _HasilScreenState extends State<HasilScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //APP BAR
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

        //BODY
        drawer: Drawer(
          child: Container(
            decoration:BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 1, 70, 198)
                    ]
                )
            ) ,


            //Profile
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  // const MyHeaderDrawer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/Manager.png',),
                      ),
                    ),
                  ),

                  //posisi home
                  Positioned(
                    child: Text("Beranda",
                      style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Account"),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const ProfilePage()));},
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));},
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const KriteriaScreen()));
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
                  // Hasil
                  ListTile(
                    leading: const Icon(Icons.add_circle_outline),
                    title: const Text("Hasil"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HasilScreen()));
                    },
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
          color: Colors.blue,
          animationDuration: Duration(milliseconds: 300),
          onTap: ontap,
          items: [
            Icon(TablerIcons.ball_football,
              color: Colors.white,),
            Icon(TablerIcons.soccer_field,
              color: Colors.white,),
            Icon(TablerIcons.building_stadium,
              color: Colors.white,),
            Icon(TablerIcons.shirt_sport,
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

