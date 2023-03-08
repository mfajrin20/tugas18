import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:select_form_field/select_form_field.dart';

class Kiper extends StatelessWidget {
  const Kiper ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

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

      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("Kiper",textAlign: TextAlign.justify,),
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
                                  image: AssetImage('assets/images/wave1.png'),
                                )
                            ),
                          ),
                      )),
                    ),

                    Positioned(
                        right: 10,
                        width: 80,
                        height: 80,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/goalkeeper.png')
                              )
                          ),
                        )),

                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        margin: EdgeInsets.only(top: 70),
                        child: Center(
                          child: Text("INPUT DATA KIPER", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      )),
                    )

                  ],
                ),
              ),


              // form isi
              TextFormField(
                //memberikan identitas untuk setiap form
                decoration: InputDecoration(
                  hintText: "Ketik nama lengkap",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people_outline),
                ),
                //memberikan validasi jika form kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              //memberikan jarak
              SizedBox(height: 15),

              TextFormField(
                //memberikan identitas untuk setiap form
                decoration: InputDecoration(
                  hintText: "Ketik Asal Sekolah",
                  labelText: "Asal Sekolah",
                  icon: Icon(Icons.school_outlined),
                ),
                //memberikan validasi jika form kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Asal Sekolah tidak boleh kosong';
                  }
                  return null;
                },
              ),
              //memberikan jarak
              SizedBox(height: 15),

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
              //memberikan jarak
              SizedBox(height: 30),

              //TEKNIK DASAR
              Positioned(
                child: Text("Teknik Dasar",textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),

              //bodyshape
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

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),

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
                                image: AssetImage('assets/images/wave2.png'),
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






