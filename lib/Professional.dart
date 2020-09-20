import 'package:addme/Social.dart';
import 'package:flutter/material.dart';

TextEditingController _github = TextEditingController();
TextEditingController _linkedin = TextEditingController();
TextEditingController _youtube = TextEditingController();
TextEditingController _website = TextEditingController();
TextEditingController _blogs = TextEditingController();

class Professional extends StatefulWidget {
  @override
  _ProfessionalState createState() => _ProfessionalState();
}

class _ProfessionalState extends State<Professional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Professional Details',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 32,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                githubTextField(),
                SizedBox(
                  height: 20,
                ),
                linkedinTextField(),
                SizedBox(
                  height: 20,
                ),
                youtubeTextField(),
                SizedBox(
                  height: 20,
                ),
                websiteTextField(),
                SizedBox(
                  height: 20,
                ),
                blogsTextField(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Social()),
                          );
                        });
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontFamily: 'SourceSerifPro',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget githubTextField() {
  return TextFormField(
    controller: _github,
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
      prefixIcon: Icon(
        Icons.code,
        color: Colors.blue,
      ),
      labelText: "Git-Hub",
      helperText: "Link to your Github Profile",
    ),
  );
}

Widget linkedinTextField() {
  return TextFormField(
    controller: _linkedin,
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
      prefixIcon: Icon(
        Icons.work,
        color: Colors.blue,
      ),
      labelText: "LinkedIn",
      helperText: "Link to your LinkedIn Profile",
    ),
  );
}

Widget youtubeTextField() {
  return TextFormField(
    controller: _youtube,
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
        AssetImage('assets/icons/youtube.png'),
        color: Colors.blue,
      ),
      labelText: "Youtube",
      helperText: "Link to your Youtube account",
    ),
  );
}

Widget websiteTextField() {
  return TextFormField(
    controller: _website,
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
        AssetImage('assets/icons/global.png'),
        color: Colors.blue,
      ),
      labelText: "Website",
      helperText: "Link to your Website",
    ),
  );
}

Widget blogsTextField() {
  return TextFormField(
    controller: _blogs,
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
      prefixIcon: Icon(
        Icons.chrome_reader_mode,
        color: Colors.blue,
      ),
      labelText: "Blogs",
      helperText: "Link to your Blogs",
    ),
  );
}
