import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:newott/ModelTheme.dart';
import 'package:provider/provider.dart';
import 'auth_service.dart';
import 'createAccount.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late GoogleSignInAccount _userObj;
  final GoogleSignIn googleSignIn = GoogleSignIn(
    clientId:
    "1093084989034-t91u1oo9pd8oq20s2v3thbfornu67vha.apps.googleusercontent.com",
  );

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
      await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      // Sign in to Firebase with the credential
      final UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = userCredential.user;

      // Check if user is not null before accessing properties
      if (user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      } else {
        print("User is null");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  bool _isChecked = false;

TextEditingController name = TextEditingController();
TextEditingController pwd = TextEditingController();
final _key = GlobalKey<FormState>();

  bool _show=false;

  a()
  {
    setState(() {
      _show = name.text.isNotEmpty && pwd.text.isNotEmpty == true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Consumer<ModelTheme>(
      builder: (context, ModelTheme themeNotifier, child) {
        return
          Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.all(2.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNw9oLuaoFl21rdbQjdy-CJ3wlR2_-eAkcDEA7DOOd8g&s"),
            ),
            title: Center(child: Text("Login Page",
              style: TextStyle(fontSize: 15, color: Colors.lightBlue),)),
            actions: [
              Icon(Icons.search),
            ],
          ),
          body:
          SingleChildScrollView(
            child: Form(
              key: _key,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                        hintText: 'Enter the user name',
                        hintStyle: TextStyle(color: Colors.green, fontSize: 12),
                        border: OutlineInputBorder(),
                      ),
                      validator: (input) {
                        if (input == null || input.isEmpty || !RegExp(
                            r"^[a-zA-Z]").hasMatch(input)) {
                          return 'Please enter the User name';
                        }
                      },
                      onChanged: (input) {
                        a();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: TextFormField(
                      controller: pwd,
                      decoration: InputDecoration(
                        hintText: 'Enter the Password',
                        hintStyle: TextStyle(color: Colors.green, fontSize: 12),
                        border: OutlineInputBorder(),
                      ),
                      validator: (input) {
                        if (input == null || input.isEmpty || !RegExp(
                            r"^[a-zA-Z0-9]").hasMatch(input)) {
                          return 'Please enter the Password';
                        }
                      },
                      onChanged: (input) {
                        a();
                      },
                    ),
                  ),
                  ElevatedButton(onPressed: () async {
                    final message = await AuthService().login(
                      email: name.text,
                      password: pwd.text,
                    );
                    if (message!.contains('Success')) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  }, child: Text("Login")),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const createAccount(),
                          ),
                        );
                      },
                      child: const Text('Create Account'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FloatingActionButton.extended(
                      onPressed: () async {
                        signInWithGoogle();
                      },
                      icon: Image.asset(
                        "assets/google.png",
                        height: 32,
                        width: 32,
                      ),
                      label: Text("sign in with google"),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    // height: 110,
                    width: 200,
                    child: Column(
                      children: [
                        Image.network("https://media.licdn.com/dms/image/D4D22AQGEfSCpe7zwrQ/feedshare-shrink_2048_1536/0/1685110279536?e=2147483647&v=beta&t=VzxRnqv5lD0FomGHt_HAuYWTE6RKWySz-MX2o5Lf1yM"),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
  }
}
