import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/app_header.dart';
import '../widgets/summary_card.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

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
              const Text(
                'Monthly Spending Report',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textDark),
              ),
              const SizedBox(height: 20),
              _buildTotalExpensesCard(),
              const SizedBox(height: 20),
              _buildSpendingBreakdownCard(),
            ],
          ),
        ),
      ),
    );
  }



  Widget _buildTotalExpensesCard() {
    return const SummaryCard(
      title: 'Total Expenses (Last 30 days)',
      padding: EdgeInsets.all(20),
      amountSpacing: 8,
      bottomSpacing: 8,
      // decoration uses the default (white + shadow) so we can leave it null or pass it explicitly
      amount: Text(
        '-\$1270.00',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.red),
      ),
      bottom: Row(
        children: [
          Icon(Icons.arrow_upward_rounded, color: AppColors.orange, size: 16),
          SizedBox(width: 4),
          Text(
            'Up 12% from last month',
            style: TextStyle(fontSize: 13, color: AppColors.orange, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildSpendingBreakdownCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Spending Breakdown', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.textDark)),
          const SizedBox(height: 20),
          _categoryRow(label: 'Food & Drink', amount: '\$450.00 (35%)', value: 0.35, color: AppColors.red),
          const SizedBox(height: 18),
          _categoryRow(label: 'Shopping', amount: '\$320.00 (25%)', value: 0.25, color: const Color(0xFF3B82F6)),
          const SizedBox(height: 18),
          _categoryRow(label: 'Housing', amount: '\$280.00 (22%)', value: 0.22, color: const Color(0xFFF59E0B)),
          const SizedBox(height: 18),
          _categoryRow(label: 'Transport', amount: '\$150.00 (12%)', value: 0.12, color: AppColors.green),
          const SizedBox(height: 18),
          _categoryRow(label: 'Other', amount: '\$70.00 (6%)', value: 0.06, color: const Color(0xFF9CA3AF)),
        ],
      ),
    );
  }

  Widget _categoryRow({required String label, required String amount, required double value, required Color color}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontSize: 14, color: AppColors.textDark, fontWeight: FontWeight.w500)),
            Text(amount, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textDark)),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            backgroundColor: const Color(0xFFE5E7EB),
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }
}
