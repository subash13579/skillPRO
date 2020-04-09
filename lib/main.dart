import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter/semantics.dart';

void main() {
  var home = HomePage();
  var welcome = Welcome();
  var interested = InterestedForm();
  var reach = ReachUs();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => home,
      '/welcome': (context) => welcome,
      '/interested': (context) => interested,
      '/reach': (context) => reach,
    },
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: <Widget>[
          Image.asset(
            'assets/bg_image.jpeg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      // Colors.black.withOpacity(1),
                      // Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container())),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Welcome to skillPRO",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/welcome');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          )
        ]),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Stack(children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: ClipPath(
                  clipper: ImageClipper(),
                  child: Image.asset(
                    'assets/pg2.jpg',
                    fit: BoxFit.fill,
                    height: screenHeight * 0.5,
                    width: screenWidth,
                    color: Color(0x99000000),
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 50),
                    child: Text(
                      'Advanced Diploma in Software Programming',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 500),
                    child: RaisedButton(
                      color: Color(0xFF00aced),
                      onPressed: () {
                        Navigator.pushNamed(context, '/interested');
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'Interested',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 200, top: 500),
                    child: RaisedButton(
                      color: Color(0xFF00aced),
                      onPressed: () {
                        Navigator.pushNamed(context, '/reach');
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'Reach Us',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Column(
              //     children: <Widget>[
              //       for (final course in courses)
              //         Padding(
              //           padding: const EdgeInsets.only(top: 30, left: 5),
              //           child: ClipOval(
              //             child: Image.asset(
              //               course.imagePath,
              //               width: 60,
              //               height: 60,
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //     ],
              //   ),
              // ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: <Widget>[
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(left: 30, top: 250),
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: Colors.blue,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Text(
              //             'Frappe',
              //             style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             fontWeight: FontWeight.w400),
              //           ),

              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(left: 30, top:20),
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: Colors.blue,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Text(
              //             'Python',
              //             style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             fontWeight: FontWeight.w400),
              //           ),

              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(left: 30, top:20),
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: Colors.blue,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Text(
              //             'Flutter',
              //             style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             fontWeight: FontWeight.w400),
              //           ),

              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(left: 10, top:20),
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: Colors.blue,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Text(
              //             'Website Development',
              //             style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             fontWeight: FontWeight.w400),
              //           ),

              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(left: 30, top:20),
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: Colors.blue,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Text(
              //             'Web Application',
              //             style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             fontWeight: FontWeight.w300),
              //           ),

              //         ),
              //       ),
              //     ),

              //     // )
              //   ],
              // ),
              // Align(
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10)),
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Text(
              //         'Frappe',
              //         // color: Colors.pink,
              //       ),
              //     ),
              //   ),
              // ),
            ])),
      ),
    ));
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartingPoint = Offset(0, 40);
    Offset curveEndPoint = Offset(size.width, size.height * 0.95);
    path.lineTo(curveStartingPoint.dx, curveStartingPoint.dy - 5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.85,
        curveEndPoint.dx - 60, curveEndPoint.dy + 10);
    path.quadraticBezierTo(size.width * 0.99, size.height * 0.99,
        curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class InterestedForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
      ),
      resizeToAvoidBottomPadding: true,
      body: new ListView(children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
                child: new Center(
                    child: new Stack(children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: new Form(
                      autovalidate: false,
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: new TextFormField(
                              // controller: name_controller,
                              decoration: new InputDecoration(
                                  labelText: "Full Name*",
                                  filled: false,
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 7.0),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                  )
                                  ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          new Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: new TextFormField(
                                obscureText: false,
                                // controller: email_controller,
                                decoration: new InputDecoration(
                                    labelText: "Email-Id",
                                    enabled: true,
                                    filled: false,
                                    prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 7.0),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                  )
                                        ),
                                keyboardType: TextInputType.text,
                              )),
                          new Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: new TextFormField(
                                obscureText: false,
                                // controller: email_controller,
                                decoration: new InputDecoration(
                                    labelText: "Qualification",
                                    enabled: true,
                                    filled: false,
                                    prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 7.0),
                                    child: Icon(
                                      Icons.school,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                  )
                                        ),
                                keyboardType: TextInputType.text,
                              )),
                          new Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: new TextFormField(
                                obscureText: false,
                                // controller: email_controller,
                                decoration: new InputDecoration(
                                    labelText: "Contact Number",
                                    enabled: true,
                                    filled: false,
                                    prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 7.0),
                                    child: Icon(
                                      Icons.contact_phone,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                  )
                                        ),
                                keyboardType: TextInputType.text,
                              )),
                          new Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: new TextFormField(
                                obscureText: false,
                                // controller: email_controller,
                                decoration: new InputDecoration(
                                    labelText: "College",
                                    enabled: true,
                                    filled: false,
                                    prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 7.0),
                                    child: Icon(
                                      Icons.location_city,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                  )),
                                keyboardType: TextInputType.text,
                              )),
                          new Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: new TextFormField(
                                obscureText: false,
                                // controller: email_controller,
                                decoration: new InputDecoration(
                                  labelText: "City",
                                  enabled: true,
                                  filled: false,
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 7.0),
                                    child: Icon(
                                      Icons.place,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                  )
                                ),
                                keyboardType: TextInputType.text,
                              )),
                          new SizedBox(
                            height: 20.0,
                          ),
                          RaisedButton(
                            child: Text('SUBMIT'),
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.pushNamed(context, '/welcome');
                            },
                          ),
                          // ),
                        ],
                      )))
            ])))
          ],
        )
      ]),
    );
  }
}

class ReachUs extends StatefulWidget {
  @override
  _ReachUs createState() => _ReachUs();
}


class _ReachUs extends State<ReachUs> {

  List<Marker> allMarkers = [];
  @override
  void initState() {
    super.initState();
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker'),
        // draggable: true,
        onTap: () {
          print('Marker Tapped');
        },
        position: LatLng(13.039184, 80.150488)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reach Us'),
      ),
      body: Center(
        child:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(13.039184, 80.150488),
              zoom: 12.0
              ),
              markers: Set.from(allMarkers),
          ),
        ),
      ),
    );
  }
}
