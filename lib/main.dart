import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of pages for bottom navigation
  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedIndex == 0 ? "Asosiy" : "Sozlamalar",style:const TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 86, 82, 119),
      ),
      body: _pages[_selectedIndex], // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Asosiy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Sozlamalar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped, // Handle navigation when tapped
      ),
    );
  }
}

// home page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.autorenew_rounded),
            Text("O'tkazmalar")
          ],)),
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.calendar_view_week_sharp),
            Text('Yashiq')
          ],))
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.people_alt_sharp),
            Text("Ishchilar")
          ],)),
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.air_outlined),
            Text('Muzlatkich')
          ],))
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.fire_truck_outlined),
            Text("Transport")
          ],)),
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.post_add_rounded),
            Text('Mahsulot')
          ],))
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.poll_outlined),
            Text("Statistika")
          ],)),
          ElevatedButton(onPressed: (){}, child: const Column(children: [
            Icon(Icons.view_in_ar_sharp),
            Text('Boshqa')
          ],))
        ],)
      ],
    );
  }
}

// settings page
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Welcome to the Settings Page!"),
    );
  }
}
