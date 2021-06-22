import 'package:flutter/material.dart';

class HomeReviewWidget extends StatelessWidget {
  const HomeReviewWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Container(
          //color: Colors.red,
          width: MediaQuery.of(context).size.width * 0.26,
          child: Column(
            children: [
              Container(
                child: Text(
                  '250',
                  style: TextStyle(
                    fontFamily: 'JosefinSansRegular',
                    fontSize: 25,
                    color: Color.fromRGBO(
                      84,
                      100,
                      252,
                      1,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Reviews',
                  style: TextStyle(
                    fontFamily: 'JosefinSansRegular',
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
                left: BorderSide(
                  width: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  child: Text(
                    '100k',
                    style: TextStyle(
                      fontFamily: 'JosefinSansRegular',
                      fontSize: 25,
                      color: Color.fromRGBO(
                        84,
                        100,
                        252,
                        1,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Followers',
                    style: TextStyle(
                      fontFamily: 'JosefinSansRegular',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.26,
          child: Column(
            children: [
              Container(
                child: Text(
                  '30',
                  style: TextStyle(
                    fontFamily: 'JosefinSansRegular',
                    fontSize: 25,
                    color: Color.fromRGBO(
                      84,
                      100,
                      252,
                      1,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Following',
                  style: TextStyle(
                    fontFamily: 'JosefinSansRegular',
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
