import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:image_picker/image_picker.dart';
import '../../Animation/FadeAnimation.dart';

class UpdateProfilePage extends StatefulWidget{
  const UpdateProfilePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _UpdateProfilePageState();
  }
}

class _UpdateProfilePageState extends State<UpdateProfilePage>{
  File? _image;

  Future getImage(ImageSource media) async {
    var img = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = img as File;
    });
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Mohon pilih media penyimpanan foto',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
                wordSpacing: 2,
              ),),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.image),
                        Text('Dari Gallery',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ),),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.camera),
                        Text('Dari Camera',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
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
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: _image == null
                        ? GestureDetector(
                      onTap: () {
                        myAlert();
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 5, color: Colors.white),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 20, offset: const Offset(5, 5),),
                          ],
                        ),
                        child: Icon(TablerIcons.user, size: 80, color: Colors.grey.shade300,),
                      ),
                    )
                        : ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        _image!,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 5,
                      ),
                    ),
                  ),

                  SizedBox(height: 50,),

                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Informasi Akun",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 3,
                              wordSpacing: 2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  //memberikan identitas untuk setiap form
                                  decoration: InputDecoration(
                                    hintText: "Ketik Nama Lengkap",
                                    labelText: "Nama Lengkap",
                                    icon: Icon(TablerIcons.user,
                                      color: Colors.black,),
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
                                TextFormField(
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
                                    icon: Icon(TablerIcons.phone,
                                      color: Colors.black,),
                                  ),
                                  //memberikan validasi jika form kosong
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Sekolah tidak boleh kosong';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
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
                          width: size.width * 0.4,
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
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 3,
                              wordSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}