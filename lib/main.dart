import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variables
  int selectedIndex = 0;

  //screens list
  List screens = [const Text('Home Screen'), const Text('About Screen')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //           child: Column(
      //         children: [
      //           CircleAvatar(
      //             radius: 50,
      //             child: Icon(
      //               Icons.person,
      //               size: 50,
      //             ),
      //           ),
      //           Text("sshahzeb"),
      //         ],
      //       )),
      //       ListTile(
      //         title: Text("Hello"),
      //       ),
      //       ListTile(
      //         title: Text("Hello"),
      //       ),
      //       ListTile(
      //         title: Text("Hello"),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          print(selectedIndex);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About')
        ],
      ),
    );
  }
}
