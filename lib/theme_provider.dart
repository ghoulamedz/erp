import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  // Default to system theme
  ThemeMode _themeMode = ThemeMode.system;

  // Get current theme mode
  ThemeMode get themeMode => _themeMode;

  // Check if dark mode is enabled (for UI toggles)
  bool get isDarkMode {
    if (_themeMode == ThemeMode.system) {
      // If system mode, use the device's brightness
      return WidgetsBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;
    }
    return _themeMode == ThemeMode.dark;
  }

  // Toggle between light, dark, and system
  void toggleTheme(bool isOn) {
    if (isOn) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners(); // Notify UI to rebuild
  }

  // Optional: Add a method to reset to system theme
  void useSystemTheme() {
    _themeMode = ThemeMode.system;
    notifyListeners();
  }
}
