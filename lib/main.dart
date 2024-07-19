import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  void _incrementLevel() {
    setState(() {
      ninjaLevel++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: const Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementLevel,
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add_box_sharp, color: Colors.grey[900]),
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                    child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage:
                            AssetImage('assets/images/avatar.png'))),
                const Divider(height: 90.0, color: Colors.white),
                const Text('Name',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0,
                        fontSize: 20.0)),
                const Text('Orebayo Oluwapelumi',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0,
                        fontSize: 20.0)),
                const SizedBox(
                  height: 30.0,
                ),
                const Text('Current Ninja Level',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 22.0)),
                const SizedBox(
                  height: 10.0,
                ),
                Text(ninjaLevel.toString(),
                    style: const TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 20.0)),
                const SizedBox(height: 30.0),
                const Row(children: <Widget>[
                  Icon(Icons.email, color: Colors.deepOrange),
                  SizedBox(width: 10.0),
                  Text('chum.lightnaija.cok.uk',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 1.0))
                ])
              ])),
    );
  }
}
