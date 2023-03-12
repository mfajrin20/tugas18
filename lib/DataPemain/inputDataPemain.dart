import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'backgroundInputDataPemain.dart';

class inputDataPemain extends StatelessWidget {
  const inputDataPemain({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    final List<Map<String, dynamic>> _Posisi = [
      {
        'value': '1',
        'label': 'Kiper',
      },
      {
        'value': '2',
        'label': 'Anchor',
      },
      {
        'value': '3',
        'label': 'Flank',
      },
      {
        'value': '4',
        'label': 'Pivot',
      },
    ];
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
      body: backgroundInputDataPemain(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(1.5,
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "PEMAIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA),
                      fontSize: 30
                  ),
                ),
              ),
            ),

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
                                hintText: "Ketik Sekolah",
                                labelText: "Sekolah",
                                icon: Icon(Icons.school_outlined),
                              ),
                              //memberikan validasi jika form kosong
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Sekolah tidak boleh kosong';
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
                            SelectFormField(
                              type: SelectFormFieldType.dropdown, // or can be dialog
                              initialValue: 'circle',
                              icon: Icon(Icons.border_color_outlined),
                              labelText: 'Posisi',
                              items: _Posisi,
                              onChanged: (val) => print(val),
                              onSaved: (val) => print(val),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Posisi tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      )),
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
                    height: 40.0,
                    width: size.width * 0.3,
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
      resizeToAvoidBottomInset : false,
    );
  }
}