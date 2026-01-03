import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:listenable_widget/listenable_widget.dart';
import 'package:proximitreats/service_locator.dart';
import 'package:proximitreats/ui/root/root_shell_view_model.dart';

class RootShell extends ListenableWidget<RootShellViewModel> {
  const RootShell({super.key, required this.child});

  final StatefulNavigationShell child;

  @override
  RootShellViewModel create(BuildContext context) => sl<RootShellViewModel>();

  @override
  Widget build(BuildContext context, RootShellViewModel viewModel) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: child.currentIndex,
        onDestinationSelected: (index) => child.goBranch(index),
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
          if (viewModel.shouldShowMyShopsTab)
            NavigationDestination(
              icon: Icon(Icons.storefront_outlined),
              selectedIcon: Icon(Icons.storefront),
              label: 'My Shops',
            ),
        ],
      ),
    );
  }
}
