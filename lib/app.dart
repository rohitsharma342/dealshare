import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'config/routes.dart';

class DealShareApp extends StatelessWidget {
  const DealShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DealShare',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}