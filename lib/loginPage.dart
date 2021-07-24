import 'package:flutter/material.dart';
import 'package:shopping/register.dart';
import 'package:shopping/startScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _pass1 = TextEditingController();
  final TextEditingController _email1 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
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
                    //Email Formfield
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),),
                        child: TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: 'Enter your email',
                              icon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(32.0)))
                          ),
                          controller: _email1,
                          validator: (value) {
                            if (value!.contains('*') || value.contains('#') || value.isEmpty || ! value.contains('@')) {
                              return 'Please a valid email';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    //Password formfield
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 400,
                        decoration: BoxDecoration(
                          //color: Colors.pink[200],
                          borderRadius: new BorderRadius.circular(10.0),),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Enter your password',
                              icon: Icon(Icons.vpn_key),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(32.0)))
                          ),
                          controller: _pass1,
                          validator: (value) {
                            if (value!.length < 6 || value.isEmpty ) {
                              return 'Password has to be at least six characters';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                //child 3
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          padding: EdgeInsets.symmetric( horizontal: 60)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => StartScreen()),
                        );
                      },
                      child: Text('Login'),

                    ),

                    Text("Don't have an account yet ?\n",
                      style: TextStyle(
                          color: Colors.black),
                    ),

                    InkWell(
                        child: Text( "Click here to Sign Up",
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline ),
                        ), onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => Register()),
                      );
                    }
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}