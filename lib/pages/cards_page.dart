import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.credit_card_outlined,
                  size: 80, color: AppColors.primary.withOpacity(0.4)),
              const SizedBox(height: 16),
              const Text(
                'Cards',
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
