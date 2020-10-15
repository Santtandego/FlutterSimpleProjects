import 'package:flutter/material.dart';

import 'c_colors.dart';

class IconButtonValues extends StatelessWidget {

  final IconData icon;
  final Function tap;

  const IconButtonValues({
    Key key,
    this.icon,
    this.tap,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: IconButton(
          onPressed: this.tap,
          icon: Icon(
            this.icon,
            size: 60.0,
          ),
          iconSize: 50,
          ),
      ),
    );
  }
}

class FAB extends StatelessWidget {

  final Color backColor;
  final Function tap;
  final Widget cWidget;

  const FAB({
    Key key,
    this.backColor,
    this.tap,
    this.cWidget
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backColor ?? cLeftColor,
      onPressed: tap,
      child: cWidget,
    );
  }
}

class CounterText extends StatelessWidget {
  
  final String currValue;
  final Color textColor;

  const CounterText({
    Key key,
    this.currValue,
    this.textColor,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      currValue,
      style: TextStyle(
        fontSize: 25,
        color: textColor ?? cLeftColor,
      ),
    );
  }
}

class CurrentValues extends StatelessWidget {
  const CurrentValues({
    Key key,
    this.counterLeft,
    this.counterRight,
  }) :  super(key: key);

  final int counterLeft;
  final int counterRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      CounterText(
        currValue: '$counterLeft',
      ),
      SizedBox(width: 100,),
      CounterText(
        currValue: '$counterRight',
        textColor: cRightColor,
      ),
      
    ],
    );
  }
}

Widget counters({Function addL, ceroL, resetL, resetR, ceroR, addR}){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 25),
        FAB(
          // tap: _incrementCounterLeft,
          tap: addL,
          cWidget: Icon(Icons.add),
        ),
        SizedBox(width: 5),
        FAB(
          // tap: _incrementCounterLeft,
          tap: ceroL,
          cWidget: Text('0'),
        ),
        SizedBox(width: 5),
        FAB(
          // tap: _decrementCounterLeft,
          tap: resetL,
          cWidget: Text('-'),
        ),
        SizedBox(width: 25,),
        FAB(
          backColor: cRightColor,
          // tap: _decrementCounterRight,
          tap: resetR,
          cWidget: Text('-'),
        ),
        SizedBox(width: 5),
        FAB(
          backColor: cRightColor,
          // tap: _counterResetRight,
          tap: ceroR,
          cWidget: Text('0'),
        ),
        SizedBox(width: 5),
        FAB(
          backColor: cRightColor,
          // tap: _incrementCounterRight,
          tap: addR,
          cWidget: Icon(Icons.add),
        ),
        SizedBox(width: 1),
      ],
    );
  }

class CustomAppBar extends StatelessWidget {
   CustomAppBar({
    Key key,
    this.truncate,
    this.operationLeft,
  }) : super(key: key);

  var truncate;
  int operationLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      color: cPrimaryColor,
      child: Row(children: <Widget>[
        SizedBox(width: 10,),
        Text('Division: $truncate',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 55,),
        Text('Modulus: $operationLeft',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 5),
      ],)
    );
  }
}
