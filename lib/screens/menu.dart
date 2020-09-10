import 'package:arretadas/components/Header.dart';

import 'package:arretadas/components/Button.dart';

import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

class Menu extends StatefulWidget {
  Menu({Key key, this.name});
  final String name;
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // void _getLocation() async {
  //   final location = await Geolocator()
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //   print(location);
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Header(
                          userName: widget.name,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset('assets/icon-person.png')),
                      ],
                    ),
                    Button(
                      width: (MediaQuery.of(context).size.width * 0.95),
                      margin: EdgeInsets.only(top: 20.0),
                      height: 70.0,
                      txtColor: Colors.white,
                      btnColor: Colors.redAccent,
                      fontSize: 20.0,
                      child: Text(
                        'PEDIR SOCORRO',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      callback: () {
                        Navigator.pushNamed(context, '');
                      },
                    ),
                    //Botão denunciar
                    Button(
                      width: (MediaQuery.of(context).size.width * 0.95),
                      height: 70.0,
                      margin: EdgeInsets.only(top: 20.0),
                      txtColor: Colors.white,
                      btnColor: Colors.red[600],
                      fontSize: 18.0,
                      child: Text(
                        'DENUNCIAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      callback: () {
                        Navigator.pushNamed(context, '/denuncias');
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 209, 209, 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ListTile(
                            title: Container(
                              margin: EdgeInsets.symmetric(vertical: 6),
                              child: Text(
                                'Novidades',
                                style: TextStyle(
                                  color: Colors.red[500],
                                  fontSize: 20,
                                  fontFamily: 'Exo',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: Container(
                              child: Text(
                                'This is a Test',
                                style: TextStyle(
                                  color: Colors.red[400],
                                  fontFamily: 'Exo',
                                ),
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'TUTORIAL >',
                                  style: TextStyle(
                                    color: Colors.red[200],
                                    fontSize: 22.0,
                                    fontFamily: 'Exo',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Button(
                          child: Icon(
                            Icons.import_contacts,
                            size: 50,
                            color: Colors.white,
                          ),
                          btnColor: Colors.red[300],
                          width: 80.0,
                          height: 80.0,
                          callback: () {
                            Navigator.pushNamed(context, '/info');
                          },
                        ),
                        Button(
                          child: Icon(
                            Icons.local_phone,
                            size: 50,
                            color: Colors.white,
                          ),
                          btnColor: Colors.red[300],
                          width: 80.0,
                          height: 80.0,
                          callback: () {
                            Navigator.pushNamed(context, '');
                          },
                        ),
                        Button(
                          child: Icon(
                            Icons.group,
                            size: 50,
                            color: Colors.white,
                          ),
                          btnColor: Colors.red[300],
                          width: 80.0,
                          height: 80.0,
                          callback: () {
                            Navigator.pushNamed(context, '/contacts');
                          },
                        ),
                        Button(
                          child: Icon(
                            Icons.map,
                            size: 50,
                            color: Colors.white,
                          ),
                          btnColor: Colors.red[300],
                          width: 80.0,
                          height: 80.0,
                          callback: () {
                            Navigator.pushNamed(context, '/map');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
