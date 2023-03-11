import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:tugas1/Home/home.dart';

import 'backgroundAlbum.dart';


class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _current = 0;
    Size size = MediaQuery.of(context).size;
    final CarouselController _controller = CarouselController();
    final List<Widget> myData = [
      Positioned(
          width: 150,
          height: 300,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album3.png')
                )
            ),
          )),
      Positioned(
          width: 150,
          height: 300,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album4.png')
                )
            ),
          )),
      Positioned(
          width: 150,
          height: 300,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album5.png')
                )
            ),
          )),
      Positioned(
          width: 150,
          height: 300,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album6.png')
                )
            ),
          )),
    ];

    return Scaffold(
      body: BackgroundAlbum(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "ALBUM",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5886F3),
                    fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
                    "BACK",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              ),
                CarouselSlider(
                  options: CarouselOptions(height: 400.0,
                    autoPlay: true,
                    aspectRatio: 20.0,
                    enlargeCenterPage: true,
                  ),
                  items: myData.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: i,
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),

      ),
    );
  }
}
