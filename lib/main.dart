import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
//import 'dart:math';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home : Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  dynamic text = "";
  dynamic ans = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Calculator',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 25.0,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.red[200],
      ),
      body:
        SizedBox(
          height: MediaQuery.of(context).size.height - AppBar().preferredSize.height -MediaQuery.of(context).padding.top,
          width : MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left : 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //SizedBox(height : (MediaQuery.of(context).size.height - AppBar().preferredSize.height - MediaQuery.of(context).padding.top )/7 ),
                    SizedBox(
                      height: (MediaQuery.of(context).size.height - AppBar().preferredSize.height - MediaQuery.of(context).padding.top )/7,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top : 25.0),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (MediaQuery.of(context).size.height - AppBar().preferredSize.height-MediaQuery.of(context).padding.top )/7,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top : 20.0),
                        child: Text(
                          ans,
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height - AppBar().preferredSize.height - MediaQuery.of(context).padding.top)*(5/7),
                width: MediaQuery.of(context).size.width,
                color: Colors.red[50],
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children : <Widget> [
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text = text.substring(0, text.length-1);
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text = '';
                                  ans = '';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'AC',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += 'sin(';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'sin',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += 'cos(';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'cos',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += 'tan(';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'tan',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '√(';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '√',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += 'π';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'π',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += 'e';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'e',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '(';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '(',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += ')';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                ')',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '^(';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '^',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '/';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '/',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '7';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '8';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '9';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '+';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '+',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '4';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '5';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '6';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '-';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '1';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '2';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '3';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += 'x';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'x',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += ' ';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                'SpaceBar',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '0';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  text += '.';
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '.',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  dynamic  tem = text.replaceAll('x', '*');
                                  if(tem[0]=='/' || tem[0]=='*')
                                    {
                                      ans = 'invalid input';
                                    }
                                  else {
                                    if (tem[0] == '+') {
                                      tem = tem.substring(1, tem.length);
                                    }
                                    tem = tem.replaceAll('++', '+');
                                    tem = tem.replaceAll(
                                        'π', '3.1415926535897932');
                                    tem = tem.replaceAll('√', 'sqrt');
                                    tem = tem.replaceAll(
                                        'e', '2.718281828459045');
                                    Parser p = Parser();
                                    Expression e = p.parse(tem);
                                    ContextModel cm = ContextModel();
                                    ans = e
                                        .evaluate(EvaluationType.REAL, cm)
                                        .toString();
                                  }
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red[50],
                              ),
                              child: Text(
                                '=',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}