import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/app_header.dart';
import '../widgets/summary_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppHeader(),
              const SizedBox(height: 24),
              const Center(
                child: Text('User Profile', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textDark)),
              ),
              const SizedBox(height: 24),
              Center(
                child: Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
                      child: const Center(
                        child: Text('MR', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              _buildProfileInfo(label: 'Name', value: 'Mymuna Rahman'),
              const SizedBox(height: 12),
              _buildProfileInfo(label: 'Student ID', value: '2210465'),
              const SizedBox(height: 12),
              _buildProfileInfo(label: 'Email', value: '2210465@iub.edu.bd'),
              const SizedBox(height: 12),
              const SummaryCard(
                title: 'Bio / Story',
                titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textDark),
                padding: EdgeInsets.all(16),
                amountSpacing: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 2)),
                  ],
                ),
                amount: Text(
                  '"Hi! I\'m Mymuna Rahman, a Computer Science & Engineering student at IUB. I love building apps with Flutter and exploring the intersection of design and technology. This app is my Assignment 2 submission for the Flutter UI course."',
                  style: TextStyle(fontSize: 13, color: AppColors.textGrey, fontStyle: FontStyle.italic, height: 1.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget _buildProfileInfo({required String label, required String value}) {
    return SummaryCard(
      title: label,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      amountSpacing: 4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      amount: Text(
        value,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.textDark),
      ),
    );
  }
}
