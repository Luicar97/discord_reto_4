import 'package:flutter/material.dart';

class HomeCircleAvatarWidget extends StatelessWidget {
  String urlImg;
  double radius;
  HomeCircleAvatarWidget({
    Key key,
    this.urlImg,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: this.radius,
      backgroundImage: NetworkImage(this.urlImg),
    );
  }
}
