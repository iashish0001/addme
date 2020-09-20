import 'dart:io';
import 'package:addme/Professional.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

PickedFile _imageFile;
final ImagePicker _picker = ImagePicker();
TextEditingController _name = TextEditingController();
TextEditingController _profession = TextEditingController();
TextEditingController _about = TextEditingController();
TextEditingController _email = TextEditingController();
TextEditingController _contact = TextEditingController();

class Basicinfo extends StatefulWidget {
  @override
  _BasicinfoState createState() => _BasicinfoState();
}

class _BasicinfoState extends State<Basicinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Basic Info',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 32,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Stack(children: <Widget>[
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: _imageFile == null
                          ? AssetImage("assets/images/user.png")
                          : FileImage(File(_imageFile.path)),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10.0,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: ((builder) => bottomSheet()),
                          );
                        },
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 28.0,
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                nameTextField(),
                SizedBox(
                  height: 20,
                ),
                professionTextField(),
                SizedBox(
                  height: 20,
                ),
                aboutTextField(),
                SizedBox(
                  height: 20,
                ),
                emailTextField(),
                SizedBox(
                  height: 20,
                ),
                contactTextField(),
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
                            MaterialPageRoute(
                                builder: (context) => Professional()),
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

Widget bottomSheet() {
  return Container(
    height: 100.0,
    width: 400,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Choose Profile photo",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.camera),
            onPressed: () {
              takePhoto(ImageSource.camera);
            },
            label: Text("Camera"),
          ),
          FlatButton.icon(
            icon: Icon(Icons.image),
            onPressed: () {
              takePhoto(ImageSource.gallery);
            },
            label: Text("Gallery"),
          ),
        ])
      ],
    ),
  );
}

takePhoto(ImageSource source) async {
  final pickedFile = await _picker.getImage(
    source: source,
  );
  //todo : check logic
  _imageFile = pickedFile;
}

Widget nameTextField() {
  return TextFormField(
    controller: _name,
    validator: (value) {
      if (value.isEmpty) return "Name can't be empty";

      return null;
    },
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
        Icons.person,
        color: Colors.blue,
      ),
      labelText: "Name",
      helperText: "Name can't be empty",
    ),
  );
}

Widget professionTextField() {
  return TextFormField(
    controller: _profession,
    validator: (value) {
      if (value.isEmpty) return "Profession can't be empty";

      return null;
    },
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
      labelText: "Profession",
      helperText: "Profession can't be empty",
    ),
  );
}

Widget aboutTextField() {
  return TextFormField(
    controller: _about,
    validator: (value) {
      if (value.isEmpty) return "About can't be empty";

      return null;
    },
    maxLines: 4,
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
        Icons.bubble_chart,
        color: Colors.blue,
      ),
      labelText: "About",
      helperText: "Write about yourself",
    ),
  );
}

Widget emailTextField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    controller: _email,
    validator: (value) {
      if (value.isEmpty) return "Email Address can't be empty";

      return null;
    },
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
        Icons.email,
        color: Colors.blue,
      ),
      labelText: "Email",
      helperText: "Enter Email Address",
    ),
  );
}

Widget contactTextField() {
  return TextFormField(
    keyboardType: TextInputType.number,
    controller: _contact,
    validator: (value) {
      if (value.isEmpty) return "Contact can't be empty";

      return null;
    },
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
        Icons.phone,
        color: Colors.blue,
      ),
      labelText: "Contact",
      helperText: "Enter Contact Number",
    ),
  );
}
