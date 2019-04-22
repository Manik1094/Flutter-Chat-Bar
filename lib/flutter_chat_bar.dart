library flutter_chat_bar;

import 'dart:math';

import 'package:flutter/material.dart';

class FlutterChatBar extends StatelessWidget {

  //Height of Chat Bar widget.
  final double height;

  //Width of chat bar widget.
  final double width;

  //Color of chat bar widget.
  final Color color;

  //Initial child which is to be displayed inside chat bar widget.
  //Ex- Message Container which is displayed (Can be TextField also)
  final Widget firstChild;

  //Child which comes after animation (when we tap on add Icon button)
  //Ex - 3 Icons which are displayed
  final Widget secondChild;

  //Color of add Icon by default it is white.
  final Color addIconColor;

  //Color of Circle avatar which has a child of Add Icon , by default color is white30
  final Color avatarColor;

  //Radius of circle avatar , by default it is 30.0
  final double avatarRadius;

  //Size of add Icon , by default it is 30.0
  final double addIconSize;

  FlutterChatBar(
    {
      @required this.height,
      @required this.width,
      @required this.color,
      @required this.firstChild,
      @required this.secondChild,
      this.addIconColor = Colors.white,
      this.avatarColor = Colors.white30,
      this.avatarRadius = 30.0,
      this.addIconSize = 30.0
    }
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: color),
      child: ContentWidget(
        firstChild: firstChild,
        secondChild: secondChild,
        color: color,
        addIconColor: addIconColor,
        addIconSize: addIconSize,
        avatarRadius: avatarRadius,
        avatarColor: avatarColor,
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {


  final Widget firstChild;
  final Widget secondChild;
  final Color color;
  final Color addIconColor;
  final Color avatarColor;
  final double addIconSize;
  final double avatarRadius;

  ContentWidget(
      {this.firstChild,
      this.secondChild,
      this.color,
      this.addIconColor,
      this.avatarColor,
      this.addIconSize,
      this.avatarRadius});
  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  //Animation for firstChild (Ex- Message container)
  Animation<double> _firstChildAnimation;

  //Animation for secondChild (Ex- 3 Icons in a row)
  Animation<double> _secondChildAnimation;

  //Animation for add Icon 
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this)
          ..addListener(() {
            setState(() {});
          });

    _firstChildAnimation = Tween(begin: pi / 4, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn));

    _secondChildAnimation = Tween(begin: 0.0, end: pi / 4).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
        reverseCurve: Curves.easeOut));

    _iconAnimation = Tween(begin: 0.0, end: pi / 4).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () {
              if (_controller.status == AnimationStatus.completed) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            },
            child: CircleAvatar(
              backgroundColor: widget.avatarColor,
              radius: widget.avatarRadius,
              child: Transform.rotate(
                  angle: _iconAnimation.value,
                  child: Icon(
                    Icons.add,
                    size: widget.addIconSize,
                    color: widget.addIconColor,
                  )),
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            Transform.scale(
              scale: _firstChildAnimation.value,
              child: widget.firstChild,
            ),
            Transform.scale(
              scale: _secondChildAnimation.value,
              child: widget.secondChild,
            )
          ],
        )
      ],
    );
  }
}
