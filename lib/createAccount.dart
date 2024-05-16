import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'auth_service.dart';
import 'colors.dart';
import 'home.dart';
import 'login page.dart';

class createAccount extends StatefulWidget {
  const createAccount({Key? key}) : super(key: key);

  @override
  State<createAccount> createState() => _createAccountState();
}

class _createAccountState extends State<createAccount> {

  @override
  void initState() {
    _passwordVisible = true;
  }
  bool _passwordVisible=true;

  final _key = GlobalKey<FormState>();
  var confirmPass;

  bool _show = false;

  TextEditingController _name = TextEditingController();
  TextEditingController _mail = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  a() {
    setState(() {
      if(_password.text==_confirmpassword.text){
        _show = _name.text.isNotEmpty &&
            _mail.text.isNotEmpty &&
            _mobile.text.isNotEmpty &&
            _mail.text.isNotEmpty &&
            _username.text.isNotEmpty &&
            _password.text.isNotEmpty &&
            _confirmpassword.text.isNotEmpty
                == true;
      }
      else
        {
          _show = false;
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            });
          },
        ),
        title: Center(
            child: Text(
          "Create New Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              addedlist(),
              SizedBox(
                height: 45,
              ),
              Image.network(
                  "https://cf.bstatic.com/xdata/images/hotel/max1024x768/101721154.jpg?k=d8cdbedf592cb893c248d55b8ef3c992f83a0051bd920b025a6bf9c93b836e01&o=&hp=1"),
            ],
          ),
        ),
      ),
    );
  }

  Column addedlist() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5, bottom: 5),
          child: TextFormField(
            controller: _name,
            decoration: InputDecoration(
              icon: new Image.asset(
                'assets/user.png',
                width: 30.0,
                height: 20.0,
                fit: BoxFit.cover,
              ),
              labelText: 'Enter the Name',
            ),
            validator: (input) {
              if (input == null ||
                  input.isEmpty ||
                  !RegExp(r"^[a-zA-Z]").hasMatch(input)) {
                return 'please enter valid name';
              }
            },
            onChanged: (input) {
              a();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5, bottom: 5),
          child: TextFormField(
            controller: _mail,
            decoration: InputDecoration(
              icon: new Image.asset(
                'assets/mail.png',
                width: 30.0,
                height: 20.0,
                fit: BoxFit.cover,
              ),
              labelText: 'Enter the mail id',
            ),
            validator: (input) {
              if (input == null ||
                  input.isEmpty ||
                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(input)) {
                return 'please enter valid email address';
              }
            },
            onChanged: (input) {
              a();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5, bottom: 5),
          child: TextFormField(
            controller: _mobile,
            decoration: InputDecoration(
              icon: new Image.asset(
                'assets/smartphone.png',
                width: 30.0,
                height: 20.0,
                fit: BoxFit.cover,
              ),
              labelText: 'Enter the phone number',
            ),
            validator: (input) {
              if (input == null ||
                  input.isEmpty ||
                  !RegExp(r"^[0-9]").hasMatch(input) ||
                  input.length != 10) {
                return 'please enter phone number';
              }
            },
            onChanged: (input) {
              a();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5, bottom: 5),
          child: TextFormField(
            controller: _username,
            decoration: InputDecoration(
              icon: new Image.asset(
                'assets/user.png',
                width: 30.0,
                height: 20.0,
                fit: BoxFit.cover,
              ),
              labelText: 'Enter the User name',
            ),
            validator: (input) {
              if (input == null ||
                  input.isEmpty ||
                  !RegExp(r"^[a-zA-Z]").hasMatch(input)) {
                return 'please enter valid user name';
              }
            },
            onChanged: (input) {
              a();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5, bottom: 5),
          child: TextFormField(
            obscureText: _passwordVisible,
            controller: _password,
            decoration: InputDecoration(
              icon: new Image.asset(
                'assets/password.png',
                width: 30.0,
                height: 20.0,
                fit: BoxFit.cover,
              ),
              labelText: 'Enter the password',
              suffixIcon: IconButton(
                icon: Icon(_passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(
                        () {
                          _passwordVisible = !_passwordVisible;
                    },
                  );
                },
              ),
            ),
            validator: (input) {
              confirmPass = input;
              if (input == null || input.isEmpty) {
                return 'please enter password';
              }
              if (input.length < 6) {
                return "Password must be atleast 6 characters long";
              }
              if (!input.contains(RegExp(r'[a-z]'))) {
                return '• Lowercase letter is missing.\n';
              }
              if (!input.contains(RegExp(r'[A-Z]'))) {
                return '• Uppercase letter is missing.\n';
              }
              if (!input.contains(RegExp(r'[0-9]'))) {
                return '• Digit is missing.\n';
              }
              if (!input.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                return '• Special character is missing.\n';
              }
            },
            onChanged: (input) {
              a();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5, bottom: 5),
          child: TextFormField(
            obscureText: _passwordVisible,
            controller: _confirmpassword,
            decoration: InputDecoration(
              icon: new Image.asset(
                'assets/password.png',
                width: 30.0,
                height: 20.0,
                fit: BoxFit.cover,
              ),
              labelText: 'Re-enter the password',
              suffixIcon: IconButton(
                icon: Icon(_passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(
                        () {
                      _passwordVisible = !_passwordVisible;
                    },
                  );
                },
              ),
            ),
            validator: (input) {
              if (input == null || input.isEmpty || input.length != 6) {
                return 'please enter password';
              }
              if (!input.contains(RegExp(r'[a-z]'))) {
                return '• Lowercase letter is missing.\n';
              }
              if (!input.contains(RegExp(r'[A-Z]'))) {
                return '• Uppercase letter is missing.\n';
              }
              if (!input.contains(RegExp(r'[0-9]'))) {
                return '• Digit is missing.\n';
              }
              if (!input.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                return '• Special character is missing.\n';
              }
              if (input != confirmPass) {
                return '• Password must be same as above.\n';
              }
            },
            onChanged: (input) {
              a();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              if (_key.currentState!.validate()) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("ok valid")));
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home()));
              }
              final message = await AuthService().registration(
                email: _mail.text,
                password: _password.text,
              );
              if (message!.contains('success')) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home()));
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Account Created"),
                ),
              );
              Navigator.pop(context);
            },
            child: Text(
              "Create an Account",
              style: b,
            ),
          ),
        ),
      ],
    );
  }
}
