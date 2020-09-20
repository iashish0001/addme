import 'package:flutter/material.dart';

ImageProvider googleIcon = AssetImage("assets/images/googleIcon.png");
ImageProvider phoneIcon = AssetImage("assets/images/phone.png");

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 150, 16, 16),
            child: Column(
              children: [
                Text(
                  'Login & Signin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins-SemiBold',
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: googleIcon,
                        width: 28,
                        height: 28,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        ' With Google',
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: phoneIcon,
                        width: 28,
                        height: 28,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        ' With Phone',
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
