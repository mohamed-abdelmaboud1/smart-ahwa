import 'package:flutter_bloc/flutter_bloc.dart';

/// Smart Ahwa Manager Navigation Cubit
/// Follows Single Responsibility - handles only navigation state
/// Manages the bottom navigation tab state for Smart Ahwa Manager
class SmartAhwaNavCubit extends Cubit<int> {
  SmartAhwaNavCubit() : super(0); // Start with Dashboard tab (index 0)

  /// Change the selected tab
  void changeTab(int index) {
    if (index >= 0 && index < 3) { // Validate tab index (0: Dashboard, 1: Add Order, 2: Reports)
      emit(index);
    }
  }

  /// Navigate to Dashboard tab
  void goToDashboard() => changeTab(0);

  /// Navigate to Add Order tab
  void goToAddOrder() => changeTab(1);

  /// Navigate to Reports tab
  void goToReports() => changeTab(2);

  /// Get the current tab name
  String get currentTabName {
    switch (state) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Add Order';
      case 2:
        return 'Reports';
      default:
        return 'Dashboard';
    }
  }

  /// Check if currently on Dashboard tab
  bool get isOnDashboard => state == 0;

  /// Check if currently on Add Order tab
  bool get isOnAddOrder => state == 1;

  /// Check if currently on Reports tab
  bool get isOnReports => state == 2;
}
