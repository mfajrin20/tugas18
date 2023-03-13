import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:tugas1/Album/AlbumScreen.dart';
import 'package:tugas1/Borda/Hasil/Anchor/HasilBordaAnchor.dart';
import 'package:tugas1/Borda/Hasil/Flank/HasilBordaFlank.dart';
import 'package:tugas1/Borda/Hasil/Kiper/HasilBordaKiper.dart';
import 'package:tugas1/Borda/Hasil/Pivot/HasilBordaPivot.dart';
import 'package:tugas1/DataPelatih/dataPelatih.dart';
import 'package:tugas1/DataPemain/dataPemain.dart';
import 'package:tugas1/Hasil/HasilPerhitunganPMdanBORDA.dart';
import 'package:tugas1/Home/PM.dart';
import 'package:tugas1/Home/Borda.dart';
import 'package:tugas1/Home/PemainInti.dart';
import 'package:tugas1/Kriteria/kriteriaScreen.dart';
import 'package:tugas1/ProfileMatching/Hasil/HasilScreen.dart';
import 'package:tugas1/ProfileMatching/Posisi/Kiper/Kiper.dart';
import 'package:tugas1/ProfileMatching/Posisi/Anchor/Anchor.dart';
import 'package:tugas1/ProfileMatching/Posisi/Flank/Flank.dart';
import 'package:tugas1/ProfileMatching/Posisi/Pivot/Pivot.dart';
import '../Auth/Akun/Account.dart';




enum DialogsAction { yes, cancel }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
  int currentIndex =1;
  final List<Widget> body =[
    PM(),
    PemainInti(),
    Borda(),

  ];

class _HomePageState extends State<HomePage>{

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
                  Color.fromARGB(255, 89, 84, 229),
                  Color.fromARGB(255, 200, 158, 215)
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
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                ),
              ),
              ListTile(
                leading: const Icon(TablerIcons.user,
                  color: Colors.white,),
                title: const Text("Account",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const ProfilePage()));},
              ),

              ListTile(
                leading: const Icon(TablerIcons.home_2,
                  color: Colors.white,),
                title: const Text("Home",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));},
              ),
              ListTile(
                leading: const Icon(TablerIcons.album,
                  color: Colors.white,),
                title: const Text("Album",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const AlbumScreen()));},
              ),
              ListTile(
                leading: const Icon(TablerIcons.user_check,
                  color: Colors.white,),
                title: const Text("Kriteria",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const KriteriaScreen()));
                },
              ),
              ListTile(
                leading: const Icon(TablerIcons.jacket,
                  color: Colors.white,),
                title: const Text("Data Pelatih",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const dataPelatih()));
                },
              ),
              ListTile(
                leading: const Icon(TablerIcons.users,
                  color: Colors.white,),
                title: const Text("Data Pemain",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const dataPemain()));
                },
              ),

              //posisi pm
              Positioned(
                child: Text("Profile Matching",style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
                ),
              ),
              ExpansionTile(
                title: Text("Input Data",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                leading: Icon(TablerIcons.analyze_filled,
                  color: Colors.white,),//add icon
                childrenPadding: EdgeInsets.only(left:30), //children padding
                children: [
                  ListTile(
                    title: Text("Kiper",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Kiper()));
                    },
                  ),

                  ListTile(
                    title: Text("Anchor",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Anchor()));
                    },
                  ),

                  ListTile(
                    title: Text("Flank",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Flank()));
                    },
                  ),

                  ListTile(
                    title: Text("Pivot",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Pivot()));
                    },
                  ),
                ],
              ),

              ListTile(
                leading: const Icon(TablerIcons.clipboard_data,
                  color: Colors.white,),
                title: const Text("Hasil",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HasilScreen()));
                },
              ),


              //posisi borda
              Positioned(
                child: const Text("Borda",style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
                ),
              ),
              ExpansionTile(
                title: Text("Perangkingan",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                leading: const Icon(TablerIcons.military_rank,
                  color: Colors.white,), //add icon
                childrenPadding: EdgeInsets.only(left:30), //children padding
                children: [
                  ListTile(
                    title: Text("Kiper",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilBordaKiper()));
                    },
                  ),

                  ListTile(
                    title: Text("Anchor",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilBordaAnchor()));
                    },
                  ),

                  ListTile(
                    title: Text("Flank",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilBordaFlank()));
                    },
                  ),

                  ListTile(
                    title: Text("Pivot",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const hasilBordaPivot()));
                    },
                  ),
                ],
              ),


              //posisi hasil
              Positioned(
                child: Text("Hasil",style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
                ),
              ),
              ListTile(
                leading: Icon(TablerIcons.certificate_2,
                  color: Colors.white,),//add icon
                title: Text("Hasil",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HasilPerhitunganPMdanBorda()));
                },
              ),

              Positioned(
                child: Text("keluar",style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
                ),
              ),
              ListTile(
                leading: Icon(TablerIcons.brand_gravatar,
                  color: Colors.white,),
                title: Text('Log Out',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Penilaian Anda akan disimpan. Kami akan menunggu Anda kembali !',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),),
                          actions: <Widget>[
                            MaterialButton(
                                onPressed: ()
                                {
                                 // Navigator.push(context, MaterialPageRoute(builder: (context) => const ()));
                                },
                                child: Text('Log Out',
                                  style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFC41A3B),
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                  wordSpacing: 2,
                                ),
                                )
                            ),
                            MaterialButton(
                              onPressed: () =>
                                  Navigator.of(context).pop(DialogsAction.cancel),
                              child: Text(
                                'Cancel',
                                  style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF4756DF),
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                  wordSpacing: 2,
                                  ),
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
          Icon(TablerIcons.brand_tinder,
            color: Colors.white,),
          Icon(TablerIcons.home,
            color: Colors.white,),
          Icon(TablerIcons.circle_rectangle,
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

