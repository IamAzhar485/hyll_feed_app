import 'package:flutter/material.dart';
import 'package:hyll_app_task/src/app.dart';
import 'package:hyll_app_task/src/features/feed/feed.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<FeedProvider>(
          create: (context) => FeedProvider(),
        ),
      ],
      child: const HyllApp(),
    ),
  );
}
