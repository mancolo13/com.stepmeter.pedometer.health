import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StepsTab extends StatefulWidget {
  const StepsTab({super.key});

  @override
  State<StepsTab> createState() => _StepsTabState();
}

class _StepsTabState extends State<StepsTab> {
  int _steps = 7420;
  static const int _target = 10000;

  @override
  Widget build(BuildContext context) {
    final progress = (_steps / _target).clamp(0.0, 1.0);
    final distanceKm = (_steps * 0.00078).toStringAsFixed(2);
    final calories = (_steps * 0.04).round();

    return Scaffold(
      appBar: AppBar(title: const Text('StepMeter Pedometer'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 180,
                        height: 180,
                        child: CircularProgressIndicator(
                          value: progress,
                          strokeWidth: 14,
                          backgroundColor: AppTheme.card,
                          color: AppTheme.primary,
                        ),
                      ),
                      Column(
                        children: [
                          Text('$_steps', style: const TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
                          const Text('of 10,000 steps', style: TextStyle(color: AppTheme.textSecondary)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('$distanceKm km', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.secondary)),
                          const Text('Distance', style: TextStyle(color: AppTheme.textSecondary)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('$calories kcal', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                          const Text('Burned', style: TextStyle(color: AppTheme.textSecondary)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => setState(() => _steps += 500),
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary, foregroundColor: Colors.black, padding: const EdgeInsets.all(16)),
            child: const Text('Simulate +500 Steps', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
