import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bar_chart_rounded,
                  size: 80, color: AppColors.primary.withOpacity(0.4)),
              const SizedBox(height: 16),
              const Text(
                'Reports',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Coming soon...',
                style: TextStyle(color: AppColors.textGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
