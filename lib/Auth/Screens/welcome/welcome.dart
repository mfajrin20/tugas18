import 'package:flutter/material.dart';
import 'package:tugas1/Animation/FadeAnimation.dart';
import 'package:tugas1/Auth/Screens/login/login.dart';
import 'package:tugas1/Auth/Screens/register/register.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/backgroundwelcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundWelcome(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              child: FadeAnimation(1.2,
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "SELAMAT DATANG",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA),
                        fontSize: 20
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Positioned(
              child: FadeAnimation(1.4,
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "PELATIH PORPROV",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA),
                        fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),

            Positioned(
              child: FadeAnimation(1.8,
                Row(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 50,
                      child: SvgPicture.asset(
                        "assets/icons/coach.svg",
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),

            //login
            Positioned(
              child: FadeAnimation(2.2,
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: MaterialButton(
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
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
                                Color.fromARGB(255, 115, 57, 187),
                                Color.fromARGB(255, 38, 132, 197)
                              ]
                          )
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


            //sign up
            Positioned(
              child: FadeAnimation(2.2,
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: MaterialButton(
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
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
                                Color.fromARGB(255, 88, 134, 243),
                                Color.fromARGB(255, 115, 57, 187)
                              ]
                          )
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "SIGN UP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
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