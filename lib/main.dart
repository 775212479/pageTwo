


import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MaterialApp(
    home: GoogleLoginPage(),
  ));
}

class GoogleLoginPage extends StatefulWidget {
  @override
  _GoogleLoginPageState createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {
  GoogleSignIn  _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Sign in with Google'),
          onPressed: () {
            _signInWithGoogle();
          },
        ),
      ),
    );
  }

  void _signInWithGoogle() async {
    try {
      await _googleSignIn.signIn();
      // Successfully signed in
      // Perform further actions like navigating to a new page
    } catch (error) {
      print('Failed to sign in with Google: $error');
    }
  }
}

mixin GoogleSignIn  {
}


