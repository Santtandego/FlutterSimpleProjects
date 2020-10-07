import 'dart:ui';

import 'package:flutter/material.dart';

import 'Components/components.dart';
import 'constants.dart';

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
                color: cPrimaryColor,
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
                    fontSize: 25,
                    color: cLeftColor,
                  ),
              ),
              SizedBox(width: 100,),
              Text(
                '$_counterRight',
                  style: TextStyle(
                    fontSize: 25,
                    color: cRightColor,
                  ),
              )
            ],
            ),
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
        _firstRowUp(bottom: 10),
        _secondRowUp(bottom: 20),
      ],
    );
  }
  Widget _buttonsDown(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20.0),
        _firstRowDown(bottom: 10),
        _secondRowDown(bottom: 10),
        Row(children: <Widget>[
          SizedBox(width: 192),
          FloatingActionButton(
            backgroundColor: cPrimaryColor,
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

    Widget _firstRowUp({double bottom}){
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButtonValues(icon: Icons.looks_one, tap: _oneUpButton,),
          IconButtonValues(icon: Icons.looks_two, tap: _twoUpButton,),
          IconButtonValues(icon: Icons.looks_3, tap: _threeUpButton,),
        ],
      ),
    );
  }

  Widget _secondRowUp({double bottom}){
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButtonValues(icon: Icons.looks_4, tap: _fourUpButton,),
          IconButtonValues(icon: Icons.looks_5, tap: _fiveUpButton,),
          IconButtonValues(icon: Icons.looks_6, tap: _sixUpButton,),
        ],
      ),
    );
  }

  Widget _firstRowDown({double bottom}){  
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButtonValues(icon: Icons.looks_one, tap: _oneDownButton,),
          IconButtonValues(icon: Icons.looks_two, tap: _twoDownButton,),
          IconButtonValues(icon: Icons.looks_3, tap: _threeDownButton,),
        ],
      ),
    );
  }

  Widget _secondRowDown({double bottom}){
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButtonValues(icon: Icons.looks_4, tap: _fourDownButton,),
          IconButtonValues(icon: Icons.looks_5, tap: _fiveDownButton,),
          IconButtonValues(icon: Icons.looks_6, tap: _sixDownButton,),
        ],
      ),
    );
  }

  Widget _counters(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 25),
        FloatingActionButton(
          backgroundColor: cLeftColor,
          onPressed: _incrementCounterLeft,
          child: Icon(Icons.add),
          ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: cLeftColor,
          onPressed: _counterResetLeft,
          child: Text('0'),
          ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: cLeftColor,
          onPressed: _decrementCounterLeft,
          child: Text('-'),
          ),
        SizedBox(width: 25,),
        FloatingActionButton(
          backgroundColor: cRightColor,
          onPressed: _decrementCounterRight,
          child: Text('-'),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: cRightColor,
          onPressed: _counterResetRight,
          child: Text('0'),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: cRightColor,
          onPressed: _incrementCounterRight,
          child: Icon(Icons.add),
          ),
        SizedBox(width: 1),
      ],
    );

  }
    
}

class CurrentValueBox extends StatefulWidget {

  final int counter;
  final Color valueColor;

  const CurrentValueBox({
    Key key,
    this.counter,
    this.valueColor,
  }) : super(key: key);

  @override
  _CurrentValueBoxState createState() => _CurrentValueBoxState();
}

class _CurrentValueBoxState extends State<CurrentValueBox> {
  
  @override
  Widget build(BuildContext context) {
    return Text(
        '$widget.counter',
        style: TextStyle(
          fontSize: 25,
          color: widget.valueColor,
        ),
    );
  }
}
