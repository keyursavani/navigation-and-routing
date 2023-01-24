import 'package:flutter/material.dart';
import 'url_strategy_native.dart'
    if (dart.library.html) 'url_strategy_web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

// (1) Navigation Using Navigator.Puch

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigatore"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
               Navigator.push(
                 context,
                MaterialPageRoute(builder: (context) {
                 return CallScreen ();
                }),
               );
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("onTap", textAlign: TextAlign.center),
              ),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
            ),
          ),
        ),
      ),
    );
  }
}

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Call"),
      ),
      body: Center(
        child: FloatingActionButton(
          child: Text('Pop!'),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
                  (Route<dynamic> route) => false,
            );
          },
        ),
      ),
    );
  }
}

// (2) Navigation Using Navigator.name

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/': (context) => HomeScreen(),
//         '/details': (context) => DetailScreen(),
//       },
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: FlatButton(
//           child: Text('View Details'),
//           onPressed: () {
//             Navigator.pushNamed(
//               context,
//               '/details',
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class DetailScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: FlatButton(
//           child: Text('Pop!'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

// (3) Url Strategy

// void main() {
//   runApp(MyApp());
//   isWebConfig();
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       theme:  ThemeData(
//         primarySwatch: Colors.teal
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//    return MyHomePageState();
//   }
// }
//
// class MyHomePageState extends State<MyHomePage>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return Scaffold(
//      appBar:  AppBar(
//        title: Text("Navigatore"),
//      ),
//      body: Center(
//        child:  Container(
//         alignment: Alignment.center,
//         child: GestureDetector(
//            onTap: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) {
//                  return CallScreen ();
//                }),
//              );
//            },
//            child: Container(
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Text("onTap", textAlign: TextAlign.center),
//              ),
//              decoration: BoxDecoration(
//                  color: Colors.teal,
//                  borderRadius:
//                  BorderRadius.all(Radius.circular(5.0))),
//            ),
//          ),
//        ),
//        ),
//    );
//   }
// }
//
// class CallScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar:  AppBar(
//         backgroundColor: Colors.deepOrangeAccent,
//         title: Text("Call"),
//       ),
//       body: Center(
//         child: FlatButton(
//           child: Text('Pop!'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

// // (4) NAvigation With hero Widget
//
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigatore Demo',
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('Main Screen'),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return DetailScreen();
//           }));
//         },
//         child: Hero(
//           tag: 'imageHero',
//           child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0f/c9/f4/df/photo5jpg.jpg'),
//         ),
//       ),
//     );
//   }
// }
//
// class DetailScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onTap: () {
//           Navigator.pop(context);
//         },
//         child: Center(
//           child: Hero(
//             tag: 'imageHero',
//             child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0f/c9/f4/df/photo5jpg.jpg'),
//           ),
//         ),
//       ),
//     );
//   }
// }
