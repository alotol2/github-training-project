import 'package:flutter/material.dart';
import 'core/constants/app_strings.dart';
import 'features/home/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blueAccent,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          primary: Colors.blueAccent,
        ),
        // دعم الخطوط المتناسقة لتصميم منظم واحترافي
        fontFamily: 'Arial',
      ),
      // تشغيل الواجهة الرئيسية مباشرة
      home: const HomePage(),
    );
  }
}