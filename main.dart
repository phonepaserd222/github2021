import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Text("GROUP9 SHOP"),
          )),
          //title: Text("Phonepaserd"),
        ),
        body: ListView(
          children: <Widget>[sectionheader, sectionbody, sectionbottom],
        ),
      ),
    );
  }
}
// page
// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Page2(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(0.0, 1.0);
//       var end = Offset.zero;
//       var curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}

//page
Widget sectionheader = Container(
  height: 80,
  color: Colors.red[300],
  //child: RaisedButton(onPressed: () => {},
  //color: Colors.red,
  //),
  child: ButtonBar(
    alignment: MainAxisAlignment.center,
    children: <Widget>[
      RaisedButton(
        onPressed: () => {},
        color: Colors.grey,
        child: Text('Home', style: TextStyle(color: Colors.white)),
      ),
      RaisedButton(
        child: Text('Package'),
        color: Colors.grey,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page2()),
          );
        },
        // onPressed: (){},
        // onPressed: () => {(_createRoute())},

        // child: Text('Package', style: TextStyle(color: Colors.white)),
      ),
      RaisedButton(
        onPressed: () => {},
        color: Colors.grey,
        child: Text('PackageType', style: TextStyle(color: Colors.white)),
      ),
    ],
  ),
);
Widget sectionbody = Container(
  height: 470,
  color: Colors.black,
  child: Image.asset('images/pubgmobile.jpg'),
);
Widget sectionbottom = Container(
  height: 150,
  color: Colors.yellow[300],
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Image.asset(
          'images/rov.jpg',
          height: 200,
          width: 150,
        ),
      ),
      Expanded(
        child: Image.asset(
          'images/rom.jpg',
          height: 200,
          width: 150,
        ),
      ),
      Expanded(
        child: Image.asset(
          'images/mb2.jpg',
          height: 200,
          width: 150,
        ),
      ),
    ],
  ),
);
