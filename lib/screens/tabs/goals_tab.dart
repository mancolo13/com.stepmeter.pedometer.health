import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class GoalsTab extends StatefulWidget {
  const GoalsTab({super.key});

  @override
  State<GoalsTab> createState() => _GoalsTabState();
}

class _GoalsTabState extends State<GoalsTab> {
  double _stepGoal = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step Goal'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Daily Step Target', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('${_stepGoal.round()} steps', style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  Slider(
                    value: _stepGoal,
                    min: 4000,
                    max: 25000,
                    divisions: 21,
                    activeColor: AppTheme.primary,
                    onChanged: (v) => setState(() => _stepGoal = v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
