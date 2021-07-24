
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping/loginPage.dart';
import 'package:shopping/startScreen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //child 1
                Container(
                  child: Image(image: AssetImage('images/amitlogo.png') ,),
                  width: 300,
                  height: 250,
                ),

                //child 2
                Column(
                  children: [
                    CreateTextField("Please enter your name", Icon(Icons.drive_file_rename_outline), _name, false),
                    CreateTextField("Please enter your email", Icon(Icons.email), _email, false),
                    CreateTextField("Please enter your password", Icon(Icons.vpn_key), _pass, true),

                  ],
                ),

                //child 3
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding: EdgeInsets.symmetric( horizontal: 60),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => StartScreen()),
                        );
                      },
                      child: Text('Sign Up'),
                    ),
                    Container(
                      child: RichText(
                          text: TextSpan(
                              text:  "Already have an account..? Login",
                              style: TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.underline ),
                              recognizer: TapGestureRecognizer() .. onTap =() {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                              }
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget CreateTextField(String hinttext, Widget icon, TextEditingController controller, bool isPass){

    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(10.0),),
        child: TextFormField(
          obscureText: isPass,
          decoration: InputDecoration(
              labelText: hinttext,
              icon: icon,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)))
          ),
          controller: controller,
        ),
      ),
    );
  }
}
