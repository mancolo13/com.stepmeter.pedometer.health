import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weekly Distance'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: const [
                  Text('48.6 km', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  SizedBox(height: 6),
                  Text('Total Distance Walked This Week', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
