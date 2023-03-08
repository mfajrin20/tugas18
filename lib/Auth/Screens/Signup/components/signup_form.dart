import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_acheck.dart';
import 'package:tugas1/onboard/constant.dart';
import '../../Login/login_screen.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (Username) {},
            decoration: InputDecoration(
              hintText: "Username",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: "Email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.email),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Confirm password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock_clock_outlined),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {},
            child: Text("Sign Up".toUpperCase()),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
        // TextFormField(
        //   //memberikan identitas untuk setiap form
        //   decoration: InputDecoration(
        //     hintText: "Ketik nama lengkap",
        //     labelText: "Nama Lengkap",
        //     icon: Icon(Icons.people),
        //   ),
        //   //memberikan validasi jika form kosong
        //   validator: (value) {
        //     if (value!.isEmpty) {
        //       return 'Nama tidak boleh kosong';
        //     }
        //     return null;
        //   },
        // ),
        // //memberikan jarak
        // SizedBox(height: 15),
        //
        //
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 16.0),
        //   child: ElevatedButton(
        //     onPressed: () {
        //       if (_formKey.currentState!.validate()) {
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(content: Text('Processing Data')),
        //         );
        //       }
        //     },
        //     child: const Text('Submit'),
        //   ),
        // ),
      ),
    );
  }
}