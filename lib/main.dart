import 'package:RayhanaERP/my_theme.dart';
import 'package:RayhanaERP/homepage.dart';
import 'package:RayhanaERP/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), // Provide ThemeProvider
      lazy: false,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logiciel ERP pour Rayhana Inc',
      themeMode: themeProvider.themeMode,
      theme: myTheme,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const MyHomePage(title: 'Logiciel'),
    );
  }
}
