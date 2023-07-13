import 'package:flutter/material.dart';
import 'package:hyll_app_task/src/features/feed/feed.dart';

class HyllApp extends StatelessWidget {
  const HyllApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feed',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const FeedPage(),
    );
  }
}
