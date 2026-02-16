import 'package:flutter/material.dart';
import '../features/home/presentation/home_page.dart';
import '../features/search/presentation/search_page.dart';
import '../features/orders/presentation/orders_page.dart';
import '../features/profile/presentation/profile_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    SearchPage(),
    OrdersPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
 

          bottomNavigationBar: BottomNavigationBar(
  currentIndex: _currentIndex,
  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
  type: BottomNavigationBarType.fixed,
  selectedItemColor: const Color(0xffEEA734),
  unselectedItemColor: Colors.grey,
  selectedFontSize: 12,
  unselectedFontSize: 12,
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag),
      label: 'Orders',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ],
),

        
    );
  }
}
