import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/transaction_tile.dart';
import '../widgets/quick_action_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              _buildHeader(),
              const SizedBox(height: 20),
              _buildBalanceCard(),
              const SizedBox(height: 24),
              _buildQuickActions(),
              const SizedBox(height: 24),
              _buildRecentTransactions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // Avatar
            Container(
              width: 46,
              height: 46,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  'S',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome back,',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textGrey,
                  ),
                ),
                const Text(
                  'Mymuna Rahman',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textDark,
                  ),
                ),
              ],
            ),
          ],
        ),
        // Notification bell
        Stack(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(
                Icons.notifications_outlined,
                color: AppColors.textDark,
                size: 22,
              ),
            ),
            // Red dot
            Positioned(
              right: 9,
              top: 9,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF4F46E5), Color(0xFF6366F1)],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4F46E5).withValues(alpha: 0.35),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: label + card icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.credit_card_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Balance amount
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '\$8,945',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: -1,
                  ),
                ),
                TextSpan(
                  text: '.32',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          // Bottom row: savings + last 30 days
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Savings: \$5,500',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Last 30 days: +\$300',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Row(
      children: [
        QuickActionButton(
          icon: Icons.swap_vert_rounded,
          label: 'Transfer',
          onTap: () {},
        ),
        const SizedBox(width: 12),
        QuickActionButton(
          icon: Icons.monetization_on_outlined,
          label: 'Pay Bills',
          onTap: () {},
        ),
        const SizedBox(width: 12),
        QuickActionButton(
          icon: Icons.link_rounded,
          label: 'Invest',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildRecentTransactions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recent Transactions',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColors.textDark,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'View All',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        // Transactions
        TransactionTile(
          icon: Icons.play_circle_outline,
          iconColor: const Color(0xFFE50914),
          iconBgColor: const Color(0xFFE50914).withValues(alpha: 0.1),
          title: 'Netflix Subscripti...',
          category: 'Entertainment',
          date: 'Today',
          amount: '\$19.99',
          isCredit: false,
        ),
        _divider(),
        TransactionTile(
          icon: Icons.local_cafe_outlined,
          iconColor: const Color(0xFF92400E),
          iconBgColor: const Color(0xFFF59E0B).withValues(alpha: 0.15),
          title: 'Coffee Shop',
          category: 'Food & Drink',
          date: 'Today',
          amount: '\$4.50',
          isCredit: false,
        ),
        _divider(),
        TransactionTile(
          icon: Icons.savings_outlined,
          iconColor: const Color(0xFF065F46),
          iconBgColor: const Color(0xFF10B981).withOpacity(0.12),
          title: 'Salary Deposit',
          category: 'Income',
          date: 'Yesterday',
          amount: '\$3500.00',
          isCredit: true,
        ),
        _divider(),
        TransactionTile(
          icon: Icons.shopping_cart_outlined,
          iconColor: const Color(0xFF374151),
          iconBgColor: const Color(0xFF9CA3AF).withOpacity(0.15),
          title: 'Grocery Store',
          category: 'Shopping',
          date: 'Yesterday',
          amount: '\$55.80',
          isCredit: false,
        ),
        _divider(),
        TransactionTile(
          icon: Icons.shopping_bag_outlined,
          iconColor: const Color(0xFFF97316),
          iconBgColor: const Color(0xFFF97316).withOpacity(0.12),
          title: 'Amazon Purchase',
          category: 'Shopping',
          date: '2 days ago',
          amount: '\$120.45',
          isCredit: false,
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _divider() {
    return const Divider(height: 1, color: Color(0xFFEEEEF0));
  }
}
