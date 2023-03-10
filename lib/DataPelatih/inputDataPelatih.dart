import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import '../Auth/components/backgroundInputDataPelatih.dart';

class inputDataPelatih extends StatelessWidget {
  const inputDataPelatih({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: backgroundInputDataPelatih(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          FadeAnimation(1.5,
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "PELATIH",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 30
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  FadeAnimation(1.8,
                      Container(
                        padding: EdgeInsets.all(5),
                        //Isi data pelatih
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              //memberikan identitas untuk setiap form
                              decoration: InputDecoration(
                                hintText: "Ketik Nama Lengkap",
                                labelText: "Nama Lengkap",
                                icon: Icon(Icons.person),
                              ),
                              //memberikan validasi jika form kosong
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Nama tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              //memberikan identitas untuk setiap form
                              decoration: InputDecoration(
                                hintText: "Ketik Alamat",
                                labelText: "Alamat ",
                                icon: Icon(Icons.maps_home_work_outlined),
                              ),
                              //memberikan validasi jika form kosong
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Alamat tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              //memberikan identitas untuk setiap form
                              decoration: InputDecoration(
                                hintText: "Ketik Gmail",
                                labelText: "Gmail",
                                icon: Icon(Icons.email),
                              ),
                              //memberikan validasi jika form kosong
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Gmail tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              //memberikan identitas untuk setiap form
                              decoration: InputDecoration(
                                hintText: "Ketik Telepon",
                                labelText: "Telepon",
                                icon: Icon(Icons.phone),
                              ),
                              //memberikan validasi jika form kosong
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Gmail tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 30,),
                ],
              ),
            ),

        FadeAnimation(2.1,
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: MaterialButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
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
                  child: Text(
                    "SUBMINT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              ),
            ),
          ],
        ),
      ),
       resizeToAvoidBottomInset: false,
    );
  }
}