import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:select_form_field/select_form_field.dart';

class inputDataPemain extends StatelessWidget {
  const inputDataPemain ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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

      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("Input Data Pemain",textAlign: TextAlign.justify,),
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
                                image: AssetImage('assets/images/wave3.png'),
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
                                  image: AssetImage('assets/images/futsal1.png')
                              )
                          ),
                        )),

                    Positioned(
                      child: FadeAnimation(1.6, Container(
                        margin: EdgeInsets.only(top: 70),
                        child: Center(
                          child: Text("INPUT DATA PEMAIN", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
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
              //memberikan jarak
              SizedBox(height: 15),

              TextFormField(
                //memberikan identitas untuk setiap form
                decoration: InputDecoration(
                  hintText: "Ketik Asal Sekolah",
                  labelText: "Asal Sekolah",
                  icon: Icon(Icons.person),
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
              SizedBox(height: 15),

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
              //memberikan jarak
              SizedBox(height: 15),

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
              //memberikan jarak
              SizedBox(height: 15),

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
              //memberikan jarak
              SizedBox(height: 70),

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
                                image: AssetImage('assets/images/wave4.png'),
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







