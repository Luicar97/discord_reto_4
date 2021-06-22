import 'package:flutter/material.dart';
import 'package:reto_flutter_4/pages/home/widget/home_button_profile.dart';
import 'package:reto_flutter_4/pages/home/widget/home_circle_avatar.dart';
import 'package:reto_flutter_4/pages/home/widget/home_card_widget.dart';
import 'package:reto_flutter_4/pages/home/widget/home_review_widget.dart';
import 'package:reto_flutter_4/pages/home/widget/home_subtitle_widget.dart';
import 'package:reto_flutter_4/pages/home/widget/home_title_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> data = [
    {
      'url':
          'https://i.pinimg.com/474x/80/56/ea/8056eaa4066acaab6dff50c24c1b4e9f.jpg',
    },
    {
      'url':
          'https://www.proyectorfantasma.com.ar/wp-content/uploads/2014/09/south_park_04.jpg',
    },
    {
      'url': 'https://doyoulikelikeme.files.wordpress.com/2012/03/stan.jpg',
    },
    {
      'url':
          'https://downloadwap.com/thumbs2/wallpapers/p2ls/2019/drawings/49/c2b6bbe613323563.jpg',
    },
    {
      'url':
          'https://static.wikia.nocookie.net/southparkla/images/2/2a/Officer-barbrady.jpg/revision/latest?cb=20140522222610&path-prefix=es',
    }
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(
          bottom: 25,
        ),
        child: FloatingActionButton(
          elevation: 8,
          backgroundColor: Color.fromRGBO(
            84,
            100,
            252,
            1,
          ),
          child: Icon(
            Icons.add,
            size: 35,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 25,
                ),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt_rounded,
                  size: 25,
                ),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color.fromRGBO(
              84,
              100,
              252,
              1,
            ),
            onTap: _onItemTapped,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: HomeTitleWidget(
                  title: 'My Profile',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              HomeCircleAvatarWidget(
                radius: 80.0,
                urlImg: 'https://i.ytimg.com/vi/jF1qb0MB6OY/maxresdefault.jpg',
              ),
              SizedBox(
                height: 25,
              ),
              HomeTitleWidget(
                title: 'Carlos Mendoza',
              ),
              SizedBox(
                height: 5,
              ),
              HomeSubtitleWidget(
                title: 'carlos_mendoza160@hotmail.com',
              ),
              SizedBox(
                height: 30,
              ),
              HomeReviewWidget(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: HomeButtonProfile(),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.grey.withOpacity(0.2),
                height: 15,
              ),
              HomeCardWidget(
                data: data,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
