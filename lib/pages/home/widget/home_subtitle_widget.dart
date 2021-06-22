import 'package:flutter/material.dart';

class HomeSubtitleWidget extends StatelessWidget {
  final String title;
  HomeSubtitleWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.title,
        style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontFamily: 'JosefinSansRegular',
        ),
      ),
    );
  }
}
