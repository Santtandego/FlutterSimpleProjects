import 'dart:ui';

import 'package:flutter/material.dart';

import 'Components/components.dart';
import 'Components/constants.dart';

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
            CustomAppBar(truncate: _truncate, operationLeft: _operationLeft),
            SizedBox(height: 60),
            buttonsUp(),
            CurrentValues(counterLeft: _counterLeft, counterRight: _counterRight),
            _buttonsDown(),
          ],
        ),
      ),
      floatingActionButton: counters(
        addL: _incrementCounterLeft,
        ceroL: _counterResetLeft,
        resetL: _decrementCounterLeft,
        resetR: _decrementCounterRight,
        ceroR: _counterResetRight,
        addR: _incrementCounterRight,
      ),
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

  
}