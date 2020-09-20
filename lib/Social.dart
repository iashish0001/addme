import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController _facebook = TextEditingController();
TextEditingController _instagram = TextEditingController();
TextEditingController _snapchat = TextEditingController();
TextEditingController _whatsaap = TextEditingController();
TextEditingController _telegram = TextEditingController();
TextEditingController _twitter = TextEditingController();

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Social Details',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 32,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              facebookTextField(),
              SizedBox(
                height: 20,
              ),
              instagramTextField(),
              SizedBox(
                height: 20,
              ),
              twitterTextField(),
              SizedBox(
                height: 20,
              ),
              snapchatTextField(),
              SizedBox(
                height: 20,
              ),
              whatsaapTextField(),
              SizedBox(
                height: 20,
              ),
              telegramTextField(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.yellow.shade700,
                    onPressed: () {
//
                    },
                    child: Text(
                      'Generate QR',
                      style: TextStyle(
                        fontFamily: 'SourceSerifPro',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    elevation: 5,
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

Widget facebookTextField() {
  return TextFormField(
    controller: _facebook,
//    validator: (value) {
//      if (value.isEmpty) return "Name can't be empty";
//
//      return null;
//    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: ImageIcon(
        AssetImage("assets/icons/facebook.png"),
        color: Colors.blue,
      ),
      labelText: "Facebook",
      helperText: "Link to your Facebook Profile",
    ),
  );
}

Widget instagramTextField() {
  return TextFormField(
    controller: _instagram,
//    validator: (value) {
//      if (value.isEmpty) return "Name can't be empty";
//
//      return null;
//    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: ImageIcon(
        AssetImage('assets/icons/insta.png'),
        color: Colors.blue,
      ),
      labelText: "Instagram",
      helperText: " Instagram Handle",
    ),
  );
}

Widget twitterTextField() {
  return TextFormField(
    controller: _twitter,
//    validator: (value) {
//      if (value.isEmpty) return "Name can't be empty";
//
//      return null;
//    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: ImageIcon(
        AssetImage('assets/icons/twitter.png'),
        color: Colors.blue,
      ),
      labelText: "Twitter",
      helperText: " Twitter Handle",
    ),
  );
}

Widget snapchatTextField() {
  return TextFormField(
    controller: _snapchat,
//    validator: (value) {
//      if (value.isEmpty) return "Name can't be empty";
//
//      return null;
//    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: ImageIcon(
        AssetImage('assets/icons/snap.png'),
        color: Colors.blue,
      ),
      labelText: "Snapchat",
      helperText: " Snapchat Handle",
    ),
  );
}

Widget whatsaapTextField() {
  return TextFormField(
    controller: _whatsaap,
//    validator: (value) {
//      if (value.isEmpty) return "Name can't be empty";
//
//      return null;
//    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: ImageIcon(
        AssetImage('assets/icons/whatsapp.png'),
        color: Colors.blue,
      ),
      labelText: "Whatsaap",
      helperText: "Link to your Whatsaap Number",
    ),
  );
}

Widget telegramTextField() {
  return TextFormField(
    controller: _telegram,
//    validator: (value) {
//      if (value.isEmpty) return "Name can't be empty";
//
//      return null;
//    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: ImageIcon(
        AssetImage('assets/icons/telegram.png'),
        color: Colors.blue,
      ),
      labelText: "Telegram",
      helperText: "Link to your Telegram Number",
    ),
  );
}
