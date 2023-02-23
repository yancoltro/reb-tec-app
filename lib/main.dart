import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:reb_tec_app/screens/executions.dart';
import 'package:reb_tec_app/screens/home.dart';
import 'package:reb_tec_app/screens/settings.dart';

void main() {
  runApp(const RebTecApp());
}

class RebTecApp extends StatefulWidget {
  const RebTecApp({super.key});

  @override
  State<RebTecApp> createState() => _RebTecAppState();
}

class _RebTecAppState extends State<RebTecApp> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomeScreen(),
        "/settings": (context) => SettingsScreen(),
      },
      title: 'Reb-Tec App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          // appBar: AppBar(title: Text("Bottom Nav Bar")),
          body: SizedBox.expand(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: <Widget>[
                HomeScreen(),
                ExecutionsScreen(),
                SettingsScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  title: Text('Home'), icon: Icon(Icons.home)),
              BottomNavyBarItem(
                  title: Text('Executions'), icon: Icon(Icons.apps)),
              BottomNavyBarItem(
                  title: Text('Settings'), icon: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}
