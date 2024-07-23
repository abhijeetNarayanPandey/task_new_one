import 'package:flutter/material.dart';
import 'package:task_new_one/AudioPage.dart';
import 'package:task_new_one/ChannelsPage.dart';
import 'package:task_new_one/NotificationsPage.dart';
import 'package:task_new_one/RewardsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> categories = [
    '#Career',
    '#Projects', 
    '#UX/UI', 
    '#Branding', 
    '#Data', 
    '#Server', 
    '#Flutter'
  ]; // Sample list of categories
  
  final List<String> liveClasses = [
    'Class 1', 
    'Class 2', 
    'Class 3', 
    'Class 4', 
    'Class 5'
  ]; // Sample list of live classes

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(categories: categories, liveClasses: liveClasses),
    );
  }
}

class MainPage extends StatefulWidget {
  final List<String> categories;
  final List<String> liveClasses;

  MainPage({required this.categories, required this.liveClasses});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    CampusPage(),
    ChannelsPage(),
    AudioPage(),
    RewardsPage(),
    NotificationsPage()
  ];

  // Method to navigate between pages
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Show the currently selected page
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Campus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Channels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CampusPage extends StatelessWidget {
  final List<String> categories = [
    '#Career', 
    '#Projects', 
    '#UX/UI', 
    '#Branding', 
    '#Data', 
    '#Server', 
    '#Flutter'
  ]; // Sample list of categories

  final List<String> liveClasses = [
    'Class 1', 
    'Class 2', 
    'Class 3', 
    'Class 4', 
    'Class 5'
  ]; // Sample list of live classes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text('Campus Layout'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Top section
          Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('url_to_user_image'),
                  ),
                  title: Text('Campus'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Add search functionality
                },
              ),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  // Add message functionality
                },
              ),
            ],
          ),
          // Bottom section
          Row(
            children: [
              Text(
                'Audio Room',
                style: TextStyle(color: Colors.black),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Implement View All functionality
                },
                child: Text('View All'),
              ),
            ],
          ),
          // Horizontal list of categories buttons 
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
          // Horizontal list of live class boxes
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: liveClasses.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 247,
                  height: 185,
                  margin: EdgeInsets.only(top: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Live Box'),
                      Container(
                        width: 90,
                        height: 42,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(26),
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Text(
                          'Join',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}






