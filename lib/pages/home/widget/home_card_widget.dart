import 'package:flutter/material.dart';
import 'package:reto_flutter_4/pages/home/widget/home_circle_avatar.dart';

class HomeCardWidget extends StatelessWidget {
  List<Map<String, dynamic>> data;
  HomeCardWidget({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: PhysicalModel(
          borderRadius: BorderRadius.circular(20.0),
          elevation: 8.0,
          shadowColor: Colors.grey,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20),
                          ),
                      child: Image.network(
                          'https://fotocreativo.com/wp-content/uploads/2019/10/fotografia-de-alimentos-ideas-creativas.jpg'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        width: 80,
                        height: 40,
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            Expanded(
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              child: Text(
                                '4.2',
                                style: TextStyle(
                                  fontFamily: 'JosefinSansBold',
                                  fontSize: 18,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                      child: Container(
                    //color: Colors.red,
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'Gramercy Tavern',
                      style: TextStyle(
                        fontFamily: 'JosefinSansBold',
                        fontSize: 18,
                      ),
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                        255,
                        131,
                        125,
                        1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    height: 23,
                    width: 60,
                    child: Text(
                      'Italian',
                      style: TextStyle(
                        fontFamily: 'JosefinSansRegular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    //color: Colors.amber,
                    height: 40,
                    width: 75,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          for (var i = 0; i < this.data.length; i++)
                            Positioned(
                              left: i * 10.0,
                              child: Container(
                                //color: Colors.red,
                                width: 20,
                                height: 20,
                                child: HomeCircleAvatarWidget(
                                  radius: 5,
                                  urlImg: data[i]['url'],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(Icons.more_vert_rounded),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 5,
                  bottom: 20,
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '42 E 20th St New York 23 USA',
                    style: TextStyle(
                      fontFamily: 'JosefinSansRegular',
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
