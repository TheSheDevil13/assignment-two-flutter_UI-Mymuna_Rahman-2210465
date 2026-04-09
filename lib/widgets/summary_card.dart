import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget amount;
  final Widget? trailing;
  final Widget? bottom;
  final Decoration? decoration;
  final EdgeInsetsGeometry? padding;
  final double? amountSpacing;
  final double? bottomSpacing;

  const SummaryCard({
    super.key,
    required this.title,
    required this.amount,
    this.titleStyle,
    this.trailing,
    this.bottom,
    this.decoration,
    this.padding,
    this.amountSpacing,
    this.bottomSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(20),
      decoration: decoration ?? BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: titleStyle ?? const TextStyle(
                  fontSize: 13,
                  color: AppColors.textGrey,
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
          SizedBox(height: amountSpacing ?? 10),
          amount,
          if (bottom != null) ...[
            SizedBox(height: bottomSpacing ?? 18),
            bottom!,
          ],
        ],
      ),
    );
  }
}
