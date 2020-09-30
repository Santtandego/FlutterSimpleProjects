import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //counters left and right
  int _counterLeft = 0;
  int _counterRight = 0;

  //operation values to left and right
  int _operationLeft = 0;
  double _operationRight = 0;
  dynamic _truncate = 0.0;

  void _incrementCounterLeft() {
    setState(() {
      _counterLeft++;
    });
  }

  void _incrementCounterRight() {
    setState(() {
      _counterRight++;
    });
  }

  void _counterResetLeft() {
    setState(() {
      _counterLeft = 0;

    });
  }

  void _counterResetRight() {
    setState(() {
      _counterRight = 0;
    });
  }

  void _decrementCounterLeft(){
    setState(() {
      _counterLeft--;
    });
  }

  void _decrementCounterRight(){
    setState(() {
      _counterRight--;
    });
  }
  
  void _modulus(){
      _operationLeft = _counterLeft % _counterRight;
      _operationRight = _counterLeft / _counterRight;
      _truncate =  _operationRight.toStringAsFixed(2);

      if((_operationLeft) != null){
        setState(() => _operationLeft);
      }
      setState(() => _truncate);
  }

  final _buttonSize = 50.0;
  double _counterSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[            
              Container(
                height: 40,
                width: double.infinity,
                color: Color.fromRGBO(212, 21, 242, 1),
                child: Row(children: <Widget>[
                  SizedBox(width: 10,),
                  Text('Division: $_truncate',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 55,),
                  Text('Modulus: $_operationLeft',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 5),
                ],)
              ),
            SizedBox(height: 60),
            buttonsUp(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              '$_counterLeft',
              style: TextStyle(
                fontSize: _counterSize,
                color: Color.fromRGBO(246, 4, 44, 1),
              ),
            ),
            SizedBox(width: 150,),
            Text(
              '$_counterRight',
              style: TextStyle(
                fontSize: _counterSize,
                color: Color.fromRGBO(20, 4, 246, 1)
              ),
            ),
            ],),
            _buttonsDown(),
          ],
        ),
      ),
      floatingActionButton: _counters(),
    );
  }

  Widget buttonsUp(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _firstRowUp(),
        SizedBox(height: 10.0),
        _secondRowUp(),
        SizedBox(height: 20.0),
      ],
    );
  }
  Widget _buttonsDown(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20.0),
        _firstRowDown(),
        SizedBox(height: 10.0),
        _secondRowDown(),
        SizedBox(height: 10.0),
        Row(children: <Widget>[
          SizedBox(width: 192),
          FloatingActionButton(
            backgroundColor: Color.fromRGBO(212, 21, 242, 1),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
          ),
              child: Center(child: Text('%', 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),
                  )
                 ),
              ),
            onPressed: _modulus, 
          ),
        ]
        )
      ],
    );
  }
  Widget _firstRowDown(){  
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _oneDownButton,
            icon: Icon(
              Icons.looks_one,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _twoDownButton,
            icon: Icon(
              Icons.looks_two,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _threeDownButton,
            icon: Icon(
              Icons.looks_3,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  Widget _secondRowDown(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _fourDownButton,
            icon: Icon(
              Icons.looks_4,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _fiveDownButton,
            icon: Icon(
              Icons.looks_5,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _sixDownButton,
            icon: Icon(
              Icons.looks_6,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  void _oneDownButton(){
    setState(() => _counterRight = 10);
  }
  void _twoDownButton(){
    setState(() => _counterRight = 25);
  }
  void _threeDownButton(){
    setState(() => _counterRight = 100);
  }
  void _fourDownButton(){
    setState(() => _counterRight = 150);
  }
  void _fiveDownButton(){
    setState(() => _counterRight = 250);
  }
  void _sixDownButton(){
    setState(() => _counterRight = 1000);
  }

  Widget _firstRowUp(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _oneUpButton,
            icon: Icon(
              Icons.looks_one,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _twoUpButton,
            icon: Icon(
              Icons.looks_two,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _threeUpButton,
            icon: Icon(
              Icons.looks_3,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  Widget _secondRowUp(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _fourUpButton,
            icon: Icon(
              Icons.looks_4,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _fiveUpButton,
            icon: Icon(
              Icons.looks_5,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _sixUpButton,
            icon: Icon(
              Icons.looks_6,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  void _oneUpButton(){
    setState(() => _counterLeft = 10);
  }
  void _twoUpButton(){
    setState(() => _counterLeft = 25);
  }
  void _threeUpButton(){
    setState(() => _counterLeft = 100);
  }
  void _fourUpButton(){
    setState(() => _counterLeft = 150);
  }
  void _fiveUpButton(){
    setState(() => _counterLeft = 250);
  }
  void _sixUpButton(){
    setState(() => _counterLeft = 1000);
  }


  Widget _counters(){
    final _countersColorLeft = Color.fromRGBO(246, 4, 44, 1);
    final _countersColorRight = Color.fromRGBO(20, 4, 246, 1);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 25),
        FloatingActionButton(
          backgroundColor: _countersColorLeft,
          onPressed: _incrementCounterLeft,
          child: Icon(Icons.add),
          ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorLeft,
          onPressed: _counterResetLeft,
          child: Text('0'),
          ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorLeft,
          onPressed: _decrementCounterLeft,
          child: Text('-'),
          ),
        SizedBox(width: 25,),
        FloatingActionButton(
          backgroundColor: _countersColorRight,
          onPressed: _decrementCounterRight,
          child: Text('-'),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorRight,
          onPressed: _counterResetRight,
          child: Text('0'),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorRight,
          onPressed: _incrementCounterRight,
          child: Icon(Icons.add),
          ),
        SizedBox(width: 1),
      ],
    );

  }
    
}
