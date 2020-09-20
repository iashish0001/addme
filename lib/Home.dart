import 'package:addme/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final navigatorKey = GlobalKey<NavigatorState>();
  String _data = "";

  _scan() async {
    await FlutterBarcodeScanner.scanBarcode(
            "#000000", "Cancel", true, ScanMode.QR)
        .then((value) => setState(() => _data = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        centerTitle: true,
        title: Text(
          'ADD ME',
        ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (int menu) {
              if (menu == 1) {
                Navigator.pushNamed(context, "/login");
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
                  child: Text('Update Details'),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text('View Profile'),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text('About'),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text('Logout'),
                  value: 4,
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(250, 0, 20, 0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.red)),
                color: Colors.yellowAccent[700],
                onPressed: () => _scan(),
                child: Text(
                  'Scan',
                  style: TextStyle(
                    fontFamily: 'SourceSerifPro',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                elevation: 5,
              ),
            ),
            Text(_data),
            Image.asset('assets/images/scan.jpg'),
            Center(
              child: Text(
                'No Qr Code to show.',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'SourceSerifPro',
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
