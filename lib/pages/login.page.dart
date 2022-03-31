import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white10,
        padding: EdgeInsets.only(
          top: 80,
          left: 20,
          right: 20,
          bottom: 40,
        ),
        child: Column(
          children: <Widget>[
            Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(3, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: ListView(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("Sign in to continue"),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Sign Up"),
                          )
                        ],
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
