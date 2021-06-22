import 'package:flutter/material.dart';

class HomeTitleWidget extends StatelessWidget {
  final String title;
  HomeTitleWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        this.title,
        style: TextStyle(
          fontFamily: 'JosefinSansRegular',
          fontSize: 30,
        ),
      ),
    );
  }
}
