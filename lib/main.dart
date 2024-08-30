import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'features/home/presentation/page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      maxMobileWidth: 620,
      builder: (context,s,d) {
        return MaterialApp(
          title: 'Soft Course',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomePage(),
        );
      }
    );
  }
}
