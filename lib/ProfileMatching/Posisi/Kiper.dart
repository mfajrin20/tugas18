import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:select_form_field/select_form_field.dart';

class Kiper extends StatelessWidget {
  const Kiper ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    //ID PEMAIN
    final List<Map<String, dynamic>> _Posisi = [
      {
        'value': '3',
        'label': 'Andi',
      },
      {
        'value': '2',
        'label': 'Dila',
      },
      {
        'value': '1',
        'label': 'Fajrin',
      },
    ];
    //Teknik Dasar
    final List<Map<String, dynamic>> _bodyShape = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _Distribusi = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _Tangkapan = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _ShootStooping = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    //SKILL
    final List<Map<String, dynamic>> _TeamWork = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _Mental = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _Intelegent = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _VisiMisiBertanding = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    //INDIVIDUAL
    final List<Map<String, dynamic>> _Intersept = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _BodyShape = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _FightingSpirit = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _Edurance = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    final List<Map<String, dynamic>> _Fisik = [
      {
        'value': '3',
        'label': 'Baik',
      },
      {
        'value': '2',
        'label': 'Sedang',
      },
      {
        'value': '1',
        'label': 'Kurang',
      },
    ];

    //POSTUR
    final List<Map<String, dynamic>> _TinggiBadan = [
      {
        'value': '3',
        'label': '170-175',
      },
      {
        'value': '2',
        'label': '166-169',
      },
      {
        'value': '1',
        'label': '160-165',
      },
    ];

    final List<Map<String, dynamic>> _BeratBadan = [
      {
        'value': '3',
        'label': '63-69',
      },
      {
        'value': '2',
        'label': '58-62',
      },
      {
        'value': '1',
        'label': '53-57',
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

      //JUDUL
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/18,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(255, 89, 84, 229),
                        Color.fromARGB(255, 180, 115, 203)
                      ]
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90),
                  ),
                ),
                child: Container(
                  child: FadeAnimation(1.3, Container(
                    child: Center(
                      child: Text("INPUT DATA KIPER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ) ,
                      ),
                    ),
                  )),
                ),
              ),
              SizedBox(height: 30),
              // DATA PEMAIN
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height/2,
              //   decoration: BoxDecoration(
              //     gradient: new LinearGradient(
              //         colors: [
              //           Color.fromARGB(255, 89, 84, 229),
              //           Color.fromARGB(255, 180, 115, 203)
              //         ]
              //     ),
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(70),
              //       topRight: Radius.circular(70),
              //       bottomLeft: Radius.circular(70),
              //       bottomRight: Radius.circular(70),
              //     ),
              //   ),
              //   child: Container(
              //     child: FadeAnimation(1.3, Container(
              //       child: Center(
              //         child: Text("INPUT DATA KIPER",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 25,
              //             fontWeight: FontWeight.w600,
              //             letterSpacing: 1,
              //             wordSpacing: 2,
              //           ) ,
              //         ),
              //       ),
              //     )),
              //   ),
              // ),

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
                              //DATA PEMAIN
                              Positioned(
                                child: Text("Data Pemain",textAlign: TextAlign.justify,
                                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'Pemain',
                                icon: Icon(Icons.border_color_outlined),
                                labelText: 'Pemain',
                                items: _Posisi,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Pemain tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
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
                              SizedBox(height: 30),
                              //TEKNIK DASAR
                              Positioned(
                                child: Text("Teknik Dasar",textAlign: TextAlign.justify,
                                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),

                              //bodyshape
                              SizedBox(height: 15),
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.border_color_outlined),
                                labelText: 'Body Shape',
                                items: _bodyShape,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Body Shape tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Distribusi
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.border_all_outlined),
                                labelText: 'Distribusi',
                                items: _Distribusi,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Distibusi tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Tangkapan
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.bookmark_remove_outlined),
                                labelText: 'Tangkapan',
                                items: _Tangkapan,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Tangkapan tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //ShootStooping
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.bookmark_border_outlined),
                                labelText: 'Shoot Stooping',
                                items: _ShootStooping,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Shoot Stooping tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 30),

                              //SKILL
                              Positioned(
                                child: Text("Skill",textAlign: TextAlign.justify,
                                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),

                              //TeamWork
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.border_color_outlined),
                                labelText: 'Team Work',
                                items: _TeamWork,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Team Work tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Mental
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.border_all_outlined),
                                labelText: 'Mental',
                                items: _Mental,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Mental tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Intelegency
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.bookmark_remove_outlined),
                                labelText: 'Intelegency',
                                items: _Intelegent,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Intelegency tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //VisiMisiBertanding
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.bookmark_border_outlined),
                                labelText: 'Visi Misi Bertanding',
                                items: _VisiMisiBertanding,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'VisiMisi Bertanding tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 30),

                              //INDIVIDUAL
                              Positioned(
                                child: Text("Individual",textAlign: TextAlign.justify,
                                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),

                              //Intersept
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.border_color_outlined),
                                labelText: 'Intersept',
                                items: _Intersept,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Intersept tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Body Shape
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.border_all_outlined),
                                labelText: 'Body Shape',
                                items: _BodyShape,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Body Shape tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Fighting Spirit
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.bookmark_remove_outlined),
                                labelText: 'Fighting Spirit',
                                items: _FightingSpirit,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Fighting Spirit tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Edurance
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.bookmark_border_outlined),
                                labelText: 'Edurance',
                                items: _Edurance,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Edurance Bertanding tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Fisik
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.person_outline),
                                labelText: 'Fisik',
                                items: _Fisik,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Fisik Bertanding tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 30),

                              //POSTUR
                              Positioned(
                                child: Text("Postur",textAlign: TextAlign.justify,
                                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),

                              //Tinggi Badan
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'circle',
                                icon: Icon(Icons.border_color_outlined),
                                labelText: 'Tinggi Badan',
                                items: _TinggiBadan,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Tinggi Badan tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),

                              //Berat Badan
                              SelectFormField(
                                type: SelectFormFieldType.dropdown, // or can be dialog
                                initialValue: 'Berat Badan',
                                icon: Icon(Icons.border_all_outlined),
                                labelText: 'Berat Badan',
                                items: _BeratBadan,
                                onChanged: (val) => print(val),
                                onSaved: (val) => print(val),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Berat Badan tidak boleh kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              FadeAnimation(2.1,
                Container(
                  alignment: Alignment.bottomCenter,
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

      ),

    );

  }
}







