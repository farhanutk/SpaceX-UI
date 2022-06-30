import 'package:flutter/material.dart';
import 'package:spacex_ui_flutter/pages/CommunityView.dart';
import 'package:spacex_ui_flutter/pages/DashBoardPage.dart';
import 'package:spacex_ui_flutter/pages/MissionView.dart';
import 'package:spacex_ui_flutter/pages/ToolsView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //nav items
  final List<Widget> _navItems = [
    CommunityView(),
    MisionView(),
    ToolsView(),
  ];
  int _selectedIndex = 1;
  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //for search button
  Icon _searchButton = const Icon(Icons.search);
  Widget _appBarTitle = Padding(
    padding: EdgeInsets.only(bottom: 15),
    child: Image.asset(
      'images/SpaceX_Logo_White.png',
      height: 50,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blue.withAlpha(7)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello, George Smith 👋',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DashboardPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.blue.withAlpha(7)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.home,
                size: 24,
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (_searchButton.icon == Icons.search) {
                      setState(() {
                        _searchButton = const Icon(Icons.close);
                        _appBarTitle = TextFormField(
                          decoration: InputDecoration(hintText: 'Search...'),
                          autofocus: true,
                        );
                      });
                    } else {
                      setState(() {
                        _searchButton = const Icon(Icons.search);
                        _appBarTitle = Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Image.asset(
                            'images/SpaceX_Logo_White.png',
                            height: 50,
                          ),
                        );
                      });
                    }
                  },
                  icon: _searchButton,
                  splashRadius: 20,
                ),
                Builder(builder: (context) {
                  return IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: Icon(Icons.menu),
                    splashRadius: 20,
                  );
                }),
              ],
            ),
          ),
        ],
        centerTitle: true,
        title: _appBarTitle,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: _navItems.elementAt(_selectedIndex),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[700],
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.blur_circular),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.biotech_outlined),
              label: 'Missions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.build_circle_outlined),
              label: 'Tools',
            ),
          ]),
    );
  }
}
