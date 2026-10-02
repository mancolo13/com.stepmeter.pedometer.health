import 'package:flutter/material.dart';
import 'tabs/steps_tab.dart';
import 'tabs/goals_tab.dart';
import 'tabs/history_tab.dart';
import 'tabs/badges_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [StepsTab(), GoalsTab(), HistoryTab(), BadgesTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.directions_walk_outlined), selectedIcon: Icon(Icons.directions_walk), label: 'Today'),
          NavigationDestination(icon: Icon(Icons.flag_outlined), selectedIcon: Icon(Icons.flag), label: 'Goal'),
          NavigationDestination(icon: Icon(Icons.history_outlined), selectedIcon: Icon(Icons.history), label: 'Distance'),
          NavigationDestination(icon: Icon(Icons.military_tech_outlined), selectedIcon: Icon(Icons.military_tech), label: 'Badges'),
        ],
      ),
    );
  }
}
