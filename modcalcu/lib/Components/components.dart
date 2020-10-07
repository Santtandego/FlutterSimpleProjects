import 'package:flutter/material.dart';

class IconButtonValues extends StatefulWidget {

  final IconData icon;
  final Function tap;

  const IconButtonValues({
    Key key,
    this.icon,
    this.tap,
    }) : super(key: key);

  @override
  _IconButtonValuesState createState() => _IconButtonValuesState();
}

class _IconButtonValuesState extends State<IconButtonValues> {
  
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
    return Ink(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: IconButton(
          onPressed: widget.tap,
          icon: Icon(
            widget.icon,
            size: 60.0,
          ),
          iconSize: 50,
          ),
      ),
    );
  }
}