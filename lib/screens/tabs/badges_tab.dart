import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class BadgesTab extends StatelessWidget {
  const BadgesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Achievements'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(backgroundColor: AppTheme.primary, child: Icon(Icons.directions_walk, color: Colors.black)),
              title: const Text('10,000 Step Pioneer'),
              subtitle: const Text('Cracked 10k steps in a single day!'),
              trailing: const Icon(Icons.check_circle, color: AppTheme.primary),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const CircleAvatar(backgroundColor: AppTheme.surface, child: Icon(Icons.military_tech, color: AppTheme.primary)),
              title: const Text('Marathon Distance (42km)'),
              subtitle: const Text('Accumulated over 42km in 7 days'),
              trailing: const Icon(Icons.check_circle, color: AppTheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}
