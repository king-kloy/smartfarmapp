import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'SmartFarm Welcomes You',
                            style: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.amber[900],
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //forgot password screen
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.green[800],
                          ),
                        ),
                      ),
                      Container(
                          color: Colors.green,
                          height: 50,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              print(nameController.text);
                              print(passwordController.text);
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                          )),
                      Container(
                          child: Center(
                        child: Row(
                          children: <Widget>[
                            Text('Does not have account?'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                color: Colors.green,
                                child: TextButton(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.green[800],
                                        fontSize: 20,
                                        letterSpacing: 1.0),
                                  ),
                                  onPressed: () {
                                    //signup screen
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  )),
            ],
          ),
        ));
  }
}
