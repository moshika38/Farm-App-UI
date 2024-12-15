import 'package:farm_management_app/utils/router.dart';
import 'package:farm_management_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutings.router,
      theme: AppTheme.lightTheme(),
     );
  }
}
