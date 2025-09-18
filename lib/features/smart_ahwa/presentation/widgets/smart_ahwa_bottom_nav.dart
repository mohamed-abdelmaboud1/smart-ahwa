import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

/// Smart Ahwa Manager Bottom Navigation Bar
/// Reuses the existing CafeBottomNav styling but with different tabs
/// Follows Open/Closed Principle - extends functionality without modifying existing code
class SmartAhwaBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const SmartAhwaBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: GNav(
        selectedIndex: selectedIndex,
        onTabChange: onTabChange,
        gap: 8,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        backgroundColor: Colors.white,
        color: Colors.grey[700], // unselected icon/text color
        activeColor: Colors.brown[800], // selected icon/text color
        tabBackgroundColor: Colors.brown.withValues(alpha: 0.1),
        tabBorderRadius: 20,
        tabShadow: [],
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: 'Dashboard',
          ),
          GButton(
            icon: LineIcons.plus,
            text: 'Add Order',
          ),
          GButton(
            icon: LineIcons.barChart,
            text: 'Reports',
          ),
        ],
      ),
    );
  }
}
