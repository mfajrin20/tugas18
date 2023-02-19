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
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/onbord3.png'),
                fit: BoxFit.fill
            )
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/onbord2.png'),
                fit: BoxFit.fill
            )
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/onbord1.png'),
                fit: BoxFit.fill
            )
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Football.png'),
                fit: BoxFit.fill
            )
        ),
      ),
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
                          image: AssetImage('assets/images/layered7.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/light-1.png')
                                )
                            ),
                          )),

                      Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/light-2.png')
                                )
                            ),
                          )),

                      Positioned(
                          right: 40,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/bola1.png')
                                )
                            ),
                          )),

                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("FOTO KEGIATAN",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),

                CarouselSlider(
                  options: CarouselOptions(height: 400.0),
                  items: myData.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                            ),
                            child: i,
                        );

                      },
                    );
                  }).toList(),
                )

                // Padding(
                //   padding: EdgeInsets.all(0.0),
                //   child: Column(
                //     children: <Widget>[
                //       SizedBox(height: 0,),
                //       FadeAnimation(2.5, Text('Pemain inti merupakan pemain yang paling berpengaruh dalam tim, sehingga penempatannya'
                //           ' harus tepat. Namun, pemilihan pemain inti seringkali menjadi masalah bagi pelatih'
                //           ' Porprov Kab Dompu, terutama jika pelatih harus memilih dari sejumlah pemain'
                //           ' yang memiliki kemampuan yang hampir sama dan penilaian secara subyektivitas dari pelatih.Dengan menggunakan sistem ini pelatih dapat dengan mudah '
                //           ' membandingkan kemampuan pemain dengan posisi yang akan diisi, pelatih dapat memberikan nilai yang obyektif '
                //           ' pada setiap pemain, sehingga dapat membantu dalam menentukan pemain yang paling tepat untuk dijadikan pemain inti.'
                //         ,textAlign: TextAlign.justify, style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1)),)),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        )
    );
  }
}

//Expanded(
//   child: CarouselSlider(
//     items: ,
//     carouselController: _controller,
//     options: CarouselOptions(
//         autoPlay: true,
//         enlargeCenterPage: true,
//         aspectRatio: 2.0,
//         onPageChanged: (index, reason) {
//           setState(() {
//             _current = index;
//           });
//         }),
//   ),
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: imgList.asMap().entries.map((entry) {
//     return GestureDetector(
//       onTap: () => _controller.animateToPage(entry.key),
//       child: Container(
//         width: 12.0,
//         height: 12.0,
//         margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//         decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: (Theme.of(context).brightness == Brightness.dark
//                 ? Colors.white
//                 : Colors.black)
//                 .withOpacity(_current == entry.key ? 0.9 : 0.4)
//         ),
//       ),
//     );
//   }).toList(),
// ),


