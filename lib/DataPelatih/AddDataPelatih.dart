import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'backgroundInputDataPelatih.dart';

class inputDataPelatih extends StatelessWidget {
  const inputDataPelatih({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();

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
            ),
          ),
        ),
      ),
      body: backgroundInputDataPelatih(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "PELATIH",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Ketik Nama Lengkap",
                  labelText: "Nama Lengkap",
                  icon:Icon(TablerIcons.user,
                    color: Colors.black,),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 5),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                //memberikan identitas untuk setiap form
                decoration: InputDecoration(
                  hintText: "Ketik Alamat",
                  labelText: "Alamat",
                  icon: Icon(TablerIcons.map_pin,
                    color: Colors.black,),
                ),
                //memberikan validasi jika form kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Alamat tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 5),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                //memberikan identitas untuk setiap form
                decoration: InputDecoration(
                  hintText: "Ketik Gmail",
                  labelText: "Gmail",
                  icon: Icon(TablerIcons.mail,
                    color: Colors.black,),
                ),
                //memberikan validasi jika form kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Gmail tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 5),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                //memberikan identitas untuk setiap form
                decoration: InputDecoration(
                  hintText: "Ketik Telepon",
                  labelText: "Telepon",
                  icon: Icon(TablerIcons.phone,
                    color: Colors.black,),
                ),
                //memberikan validasi jika form kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Telepon tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 5),

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
    );

  }
}
