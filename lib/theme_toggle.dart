import 'package:RayhanaERP/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSettingToggle extends StatelessWidget {
  const ThemeSettingToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text("Dark Mode"),
            subtitle: const Text("Toggle between light and dark themes"),
            value: themeProvider.isDarkMode,
            onChanged: (isOn) => themeProvider.toggleTheme(isOn),
          ),
          // Optional: Button to reset to system theme
          ListTile(
            title: const Text("Use System Theme"),
            onTap: () => themeProvider.useSystemTheme(),
          ),
        ],
      ),
    );
  }
}
