// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final player = AudioPlayer();
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('Hello, I am a xylophone')),
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               children: [
//                 TextButton(
//                   child: Text('Click me 1'),
//                   // style: TextButton.styleFrom(
//                   //   backgroundColor: Colors.pink,
//                   // ),
//
//                   onPressed: () {
//                     player.play(AssetSource('note1.wav'));
//                   },
//                 ),
//                 TextButton(
//                   child: Text('Click me 2'),
//                   onPressed: () {
//                     // Play audio file for button 2
//                     player.play(AssetSource('note2.wav'));
//                   },
//                 ),
//                 TextButton(
//                   child: Text('Click me 3'),
//                   onPressed: () {
//                     // Play audio file for button 3
//                     player.play(AssetSource('note3.wav'));
//                   },
//                 ),
//                 TextButton(
//                   child: Text('Click me 4'),
//                   onPressed: () {
//                     // Play audio file for button 4
//                     player.play(AssetSource('note4.wav'));
//                   },
//                 ),
//                 TextButton(
//                   child: Text('Click me 5'),
//                   onPressed: () {
//                     // Play audio file for button 5
//                     player.play(AssetSource('note5.wav'));
//                   },
//                 ),
//                 TextButton(
//                   child: Text('Click me 6'),
//                   onPressed: () {
//                     // Play audio file for button 6
//                     player.play(AssetSource('note6.wav'));
//                   },
//                 ),
//                 TextButton(
//                   child: Text('Click me 7'),
//                   onPressed: () {
//                     // Play audio file for button 7
//                     player.play(AssetSource('note7.wav'));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    // Define rainbow colors
    List<Color> rainbowColors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: Center(child: Text('Hello, I am a xylophone')),
        // ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < 7; i++)
                Expanded(
                  child: TextButton(
                    child: Text(
                        // 'Click me ',
                        " "),
                    style: TextButton.styleFrom(
                      backgroundColor: rainbowColors[i],
                      // minimumSize: Size(200, 50),
                    ),
                    onPressed: () {
                      // Play audio file for the corresponding button
                      player.play(AssetSource('note${i + 1}.wav'));
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
