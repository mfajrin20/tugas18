import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:select_form_field/select_form_field.dart';

class Flank extends StatelessWidget {
  const Flank ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    //Teknik Dasar
    final List<Map<String, dynamic>> _Shooting = [
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

    final List<Map<String, dynamic>> _Dribble = [
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

    final List<Map<String, dynamic>> _Agility = [
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


    return Scaffold(

      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("Flank",textAlign: TextAlign.justify,),
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
                                  image: AssetImage('assets/images/Ball.png')
                              )
                          ),
                        )),

                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        margin: EdgeInsets.only(top: 70),
                        child: Center(
                          child: Text("INPUT DATA FLANK", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
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

              //Shooting
              SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'circle',
                icon: Icon(Icons.border_color_outlined),
                labelText: 'Shooting',
                items: _Shooting,
                onChanged: (val) => print(val),
                onSaved: (val) => print(val),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Shooting tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //Dribble
              SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'circle',
                icon: Icon(Icons.border_all_outlined),
                labelText: 'Dribble',
                items: _Dribble,
                onChanged: (val) => print(val),
                onSaved: (val) => print(val),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Dribble tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //Agility
              SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'circle',
                icon: Icon(Icons.bookmark_added_rounded),
                labelText: 'Agility',
                items: _Dribble,
                onChanged: (val) => print(val),
                onSaved: (val) => print(val),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Agility tidak boleh kosong';
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







