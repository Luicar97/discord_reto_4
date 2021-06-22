import 'package:flutter/material.dart';

class HomeButtonProfile extends StatelessWidget {
  const HomeButtonProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.width * 0.14,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(
                    84,
                    100,
                    252,
                    1,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  fontFamily: 'JosefinSansRegular',
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.width * 0.14,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'JosefinSansRegular',
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
