import 'package:flutter/material.dart';
import 'package:flutter_transform/exercise_page/3d_flip_flutter.dart';
import 'package:flutter_transform/exercise_page/perspective_on_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Flip_Animation(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   Offset _offset = Offset.zero; // new

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Transform(
//       // Transform widget
//       transform: Matrix4.identity()
//         ..setEntry(3, 2, 0.001) // perspective
//         ..rotateX(_offset.dy)
//         ..rotateY(_offset.dx),
//       alignment: FractionalOffset.center,
//       child: _defaultApp(context),
//     );
//   }

//   _defaultApp(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Dhika Ainul Luthfi',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Transform.rotate(
//               angle: -45 * (pi / 180.0),
//               child: ElevatedButton(
//                 child: const Text("Rotated button"),
//                 onPressed: () {},
//               ),
//             ),
//             Transform(
//               transform: Matrix4.rotationZ(-45 * (pi / 180.0)),
//               alignment: Alignment.center,
//               child: ElevatedButton(
//                 child: const Text("Rotated button"),
//                 onPressed: () {},
//               ),
//             ),
//             Transform.scale(
//               scale: 2.0,
//               child: ElevatedButton(
//                 child: const Text("scaled up"),
//                 onPressed: () {},
//               ),
//             ),
//             Transform(
//               transform: Matrix4.identity()..scale(2.0, 2.0),
//               alignment: Alignment.center,
//               child: ElevatedButton(
//                 child: const Text("scaled up (matrix)"),
//                 onPressed: () {},
//               ),
//             ),
//             Transform.translate(
//               offset: const Offset(100, 300),
//               child: ElevatedButton(
//                 child: const Text("translated to bottom"),
//                 onPressed: () {},
//               ),
//             ),
//             Transform(
//               transform: Matrix4.translationValues(100, 300, 0),
//               child: ElevatedButton(
//                 child: const Text("translated to bottom (matrix)"),
//                 onPressed: () {},
//               ),
//             ),
//             Transform.translate(
//               offset: const Offset(70, 200),
//               child: Transform.rotate(
//                 angle: -45 * (pi / 180.0),
//                 child: Transform.scale(
//                   scale: 2.0,
//                   child: ElevatedButton(
//                     child: const Text("multiple transformations"),
//                     onPressed: () {},
//                   ),
//                 ),
//               ),
//             ),
//             Transform(
//               alignment: Alignment.center,
//               transform: Matrix4.translationValues(70, 200, 0)
//                 ..rotateZ(-45 * (pi / 180.0))
//                 ..scale(2.0, 2.0),
//               child: ElevatedButton(
//                 child: const Text("multiple transformations (matrix)"),
//                 onPressed: () {},
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
