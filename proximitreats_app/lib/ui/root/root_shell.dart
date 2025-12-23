import 'package:flutter/material.dart';

class RootShell extends StatelessWidget {
  const RootShell({
    super.key,
    required this.child,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final Widget child;
  final int selectedIndex;
  final void Function(int index)? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => onDestinationSelected?.call(index),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: 'Today',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            selectedIcon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_outlined),
            selectedIcon: Icon(Icons.notifications),
            label: 'Alerts',
          ),
        ],
      ),
    );
  }
}
