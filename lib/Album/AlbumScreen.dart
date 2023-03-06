import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';


class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // int _current = 0;
    // final CarouselController _controller = CarouselController();
    final List<Widget> myData = [
      Positioned(
          width: 80,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album1.jpeg')
                )
            ),
          )),
      Positioned(
          width: 80,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album2.jpeg')
                )
            ),
          )),
      Positioned(
          width: 80,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album3.jpeg')
                )
            ),
          )),
      Positioned(
          width: 80,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album4.jpeg')
                )
            ),
          )),
      Positioned(
          width: 80,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album5.jpeg')
                )
            ),
          )),
      Positioned(
          width: 80,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/album6.jpeg')
                )
            ),
          )),
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Album pemain Futsall Porprov",textAlign: TextAlign.justify,),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/layered4.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[

                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit:BoxFit.fill,
                                  image: AssetImage('assets/images/Football.png',
                                  )
                              )
                          ),
                        )
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: FadeAnimation(1.6, Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text("ALBUM PEMAIN",
                        // textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                    ),
                  )
                  ),
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
                )
              ],
            ),
          ),
        )
    );
  }
}
