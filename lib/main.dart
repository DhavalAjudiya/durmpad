import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  runApp(Drumpad());
}

class Drumpad extends StatefulWidget {
  @override
  _DrumpadState createState() => _DrumpadState();
}

class _DrumpadState extends State<Drumpad> {
  AudioCache player = AudioCache();

  Widget drumbotton(text, Color colorName) {
    return GestureDetector(
      onTapDown: (a) {
        playsound(text);
        print("text------$text");
      },
      child: Container(
        height: 110,
        width: 108,
        decoration: BoxDecoration(
          color: colorName,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Text(" ", style: TextStyle(fontSize: 20)),
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Drum pad",
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 13.0,
                ),
                Row(
                  children: <Widget>[
                    drumbotton("one", Colors.red),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("two", Colors.yellow),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("three", Colors.pink),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(3),
                ),
                Row(
                  children: <Widget>[
                    drumbotton("four", Colors.lightGreen),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("five", Colors.purple.shade200),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("six", Colors.grey),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(3),
                ),
                Row(
                  children: <Widget>[
                    drumbotton("seven", Colors.cyan),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("eight", Colors.teal),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("nine", Colors.blue),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(3),
                ),
                Row(
                  children: <Widget>[
                    drumbotton("ten", Colors.pink),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("eleven", Colors.purple),
                    const Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    drumbotton("twelev", Colors.blue.shade200),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  void playsound(String text) {
    switch (text) {
      case "one":
        player.play("sound1.wav");

        break;
      case "two":
        player.play("sound2.wav");

        break;
      case "three":
        player.play("sound3.wav");

        break;
      case "four":
        player.play("sound4.wav");
        break;
      case "five":
        player.play("sound5.wav");

        break;
      case "six":
        player.play("sound6.wav");

        break;
      case "seven":
        player.play("sound7.wav");

        break;
      case "eight":
        player.play("sound8.wav");

        break;
      case "nine":
        player.play("sound9.wav");

        break;
      case "ten":
        player.play("sound10.wav");

        break;
      case "eleven":
        player.play("sound11.wav");

        break;
      case "twelev":
        player.play("sound12.wav");

        break;
    }
  }
}
