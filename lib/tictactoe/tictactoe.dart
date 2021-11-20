import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  String con1 = '';
  String con2 = '';
  String con3 = '';
  String con4 = '';
  String con5 = '';
  String con6 = '';
  String con7 = '';
  String con8 = '';
  String con9 = '';

  dynamic winner = Text('');
  bool showResults = false;
  // bool isComp = true;

  void results() {
    if (con1 != '' ||
        con2 != '' ||
        con3 != '' ||
        con4 != '' ||
        con5 != '' ||
        con6 != '' ||
        con7 != '' ||
        con8 != '' ||
        con9 != '') {
      if (con1 == 'O' && con2 == 'O' && con3 == 'O' ||
          con4 == 'O' && con5 == 'O' && con6 == 'O' ||
          con7 == 'O' && con8 == 'O' && con9 == 'O' ||
          con1 == 'O' && con4 == 'O' && con7 == 'O' ||
          con2 == 'O' && con5 == 'O' && con8 == 'O' ||
          con3 == 'O' && con6 == 'O' && con9 == 'O' ||
          con1 == 'O' && con5 == 'O' && con9 == 'O' ||
          con3 == 'O' && con5 == 'O' && con7 == 'O') {
        winner = Text(
          'Player 1 Wins',
          style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        );
        showResults = true;
      }

      if (con1 == 'X' && con2 == 'X' && con3 == 'X' ||
          con4 == 'X' && con5 == 'X' && con6 == 'X' ||
          con7 == 'X' && con8 == 'X' && con9 == 'X' ||
          con1 == 'X' && con4 == 'X' && con7 == 'X' ||
          con2 == 'X' && con5 == 'X' && con8 == 'X' ||
          con3 == 'X' && con6 == 'X' && con9 == 'X' ||
          con1 == 'X' && con5 == 'X' && con9 == 'X' ||
          con3 == 'X' && con5 == 'X' && con7 == 'X') {
        winner = Text(
          'Player 2 Wins',
          style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        );
        showResults = true;
      }
    }
    if (showResults == false &&
        con1 != '' &&
        con2 != '' &&
        con3 != '' &&
        con4 != '' &&
        con5 != '' &&
        con6 != '' &&
        con7 != '' &&
        con8 != '' &&
        con9 != '') {
      winner = Text(
        'It\'s a Draw',
        style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
      );
      showResults = true;
    }
    setState(() {});
  }

  var player = 1;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Stack(

          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: (screenHeight < screenWidth)
                        ? screenHeight * 0.11
                        : screenWidth * 0.11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: (screenHeight < screenWidth)
                                ? screenHeight * 0.02
                                : screenWidth * 0.02),
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con1,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con1 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con1 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con1 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con1 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con1 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: (screenHeight < screenWidth)
                                ? screenHeight * 0.02
                                : screenWidth * 0.02),
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con2,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con2 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con2 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con2 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con2 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con2 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                      Container(
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con3,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con3 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con3 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con3 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con3 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con3 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (screenHeight < screenWidth)
                        ? screenHeight * 0.02
                        : screenWidth * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: (screenHeight < screenWidth)
                                ? screenHeight * 0.02
                                : screenWidth * 0.02),
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con4,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con4 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con4 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con4 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con4 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con4 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: (screenHeight < screenWidth)
                                ? screenHeight * 0.02
                                : screenWidth * 0.02),
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con5,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con5 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con5 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con5 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con5 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con5 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                      Container(
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con6,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con6 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con6 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con6 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con6 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con6 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (screenHeight < screenWidth)
                        ? screenHeight * 0.02
                        : screenWidth * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: (screenHeight < screenWidth)
                                ? screenHeight * 0.02
                                : screenWidth * 0.02),
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con7,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con7 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con7 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con7 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con7 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con7 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: (screenHeight < screenWidth)
                                ? screenHeight * 0.02
                                : screenWidth * 0.02),
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con8,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con8 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con8 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con8 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con8 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con8 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                      Container(
                        child: InkWell(
                          child: Container(
                            height: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            width: (screenHeight < screenWidth)
                                ? screenHeight * 0.25
                                : screenWidth * 0.25,
                            color: Colors.greenAccent,
                            alignment: Alignment(0, 0),
                            child: Text(
                              con9,
                              style: TextStyle(
                                  fontSize: screenWidth * 0.1,
                                  fontWeight: FontWeight.bold,
                                  color: con9 == 'X'? Colors.black87 :Colors.white),
                            ),
                          ),
                          onTap: () {
                            if (con9 == '' &&
                                player == 1 &&
                                showResults != true) {
                              con9 = 'O';
                              player = 2;
                              setState(() {});
                            }
                            if (con9 == '' &&
                                player == 2 &&
                                showResults != true) {
                              player = 1;
                              con9 = 'X';
                              setState(() {});
                            }
                            results();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (screenHeight < screenWidth)
                        ? screenHeight * 0.06
                        : screenWidth * 0.06,
                  ),
                  IconButton(
                    onPressed: () {
                      con1 = '';
                      con2 = '';
                      con3 = '';
                      con4 = '';
                      con5 = '';
                      con6 = '';
                      con7 = '';
                      con8 = '';
                      con9 = '';
                      player = 1;
                      winner = Text('');
                      showResults = false;
                      setState(() {});
                    },
                    icon: Icon(Icons.replay_outlined),
                    iconSize: (screenHeight < screenWidth)
                        ? screenHeight * 0.09
                        : screenWidth * 0.09,
                    color: Colors.greenAccent,
                  ),
                ]),
            Visibility(
              visible: showResults,
              child: Container(
                margin: EdgeInsets.all((screenHeight < screenWidth)
                    ? screenHeight * 0.09
                    : screenWidth * 0.09),
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent, width: 3),
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    winner,
                    SizedBox(
                      height: (screenHeight < screenWidth)
                          ? screenHeight * 0.06
                          : screenWidth * 0.06,
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          // fixedSize: ,
                          padding: EdgeInsets.only(
                            left: (screenHeight < screenWidth)
                                ? screenHeight * 0.03
                                : screenWidth * 0.03,
                            top: (screenHeight < screenWidth)
                                ? screenHeight * 0.03
                                : screenWidth * 0.03,
                            right: (screenHeight < screenWidth)
                                ? screenHeight * 0.03
                                : screenWidth * 0.03,
                            bottom: (screenHeight < screenWidth)
                                ? screenHeight * 0.03
                                : screenWidth * 0.03,
                          )),
                      onPressed: () {
                        con1 = '';
                        con2 = '';
                        con3 = '';
                        con4 = '';
                        con5 = '';
                        con6 = '';
                        con7 = '';
                        con8 = '';
                        con9 = '';
                        player = 1;
                        winner = Text('');
                        showResults = false;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.replay_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Replay',
                        style: TextStyle(fontSize: 25, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
