import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
          body: Center(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Image(
              image: AssetImage('assets/jawanpak.jpg'),
              height: 100,
              width: 100,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            // padding: const EdgeInsets.fromLTRB(10, 70, 0, 0),
            child: Text(
              " Welcome TO\nJawan Pakistan",
              style: TextStyle(
                  color: Colors.blueAccent.withOpacity(1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 300,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Address',
                hintText: 'Email Address',
                prefixIcon: Icon(Icons.alternate_email_rounded),
              ))),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            width: 300,
            child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.password_rounded),
                ),
                //autofocus: false,
                obscureText: true),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('Forgot Password?',
                  style: TextStyle(
                    color: Colors.blueAccent.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ))),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: 200,
            height: 40,
            child: ElevatedButton.icon(
                icon: Icon(
                  Icons.facebook_rounded,
                ),
                label: Text('Login using Facebook'),
                onPressed: () {},
                style: facebookButton),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            width: 200,
            height: 40,
            child: ElevatedButton.icon(
                icon: Icon(
                  Icons.person_rounded,
                ),
                label: Text('Login using Google'),
                onPressed: () {},
                style: gmailButton),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            width: 200,
            height: 40,
            child: ElevatedButton.icon(
                icon: Icon(
                  Icons.person,
                ),
                label: Text('Login using GitHub'),
                onPressed: () {},
                style: gitButton),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            width: 200,
            height: 40,
            child: ElevatedButton.icon(
                icon: Icon(
                  Icons.email_rounded,
                ),
                label: Text('Login using Email'),
                onPressed: () {},
                style: emailButton),
          ),
        ],
      ))),
      debugShowCheckedModeBanner: false,
    );
  }
}

final ButtonStyle facebookButton = ElevatedButton.styleFrom(
    onPrimary: Colors.white, primary: Color(0xff3b5998));
final ButtonStyle gmailButton = ElevatedButton.styleFrom(
    onPrimary: Colors.white, primary: Color(0xffEA4335));
final ButtonStyle gitButton =
    ElevatedButton.styleFrom(onPrimary: Colors.white, primary: Colors.blueGrey);
final ButtonStyle emailButton = ElevatedButton.styleFrom(
    onPrimary: Colors.white, primary: Colors.orangeAccent);
