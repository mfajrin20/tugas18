import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:tugas1/Auth/Screens/login/login.dart';
import 'package:tugas1/Auth/components/background.dart';
import 'package:tugas1/Home/home.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "REGISTER",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.blue,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 3,
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  icon:Icon(TablerIcons.user,
                    color: Colors.blue,),
                ),
              ),
            ),


            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Gmail",
                  icon:Icon(TablerIcons.mail,
                    color: Colors.blue,),
                ),
              ),
            ),


            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  icon:Icon(TablerIcons.password,
                    color: Colors.blue,),
                ),
              ),
            ),


            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password Again",
                  icon:Icon(TablerIcons.password,
                    color: Colors.blue,),
                ),
                obscureText: true,
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
                        Color.fromARGB(255, 174, 34, 255),
                        Color.fromARGB(255, 144, 150, 239)
                      ]
                    )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "SIGN UP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3,
                      wordSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
                },
                child: Text(
                  "Already Have an Account? Sign in",
                  style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF2661FA),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}