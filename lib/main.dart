import 'package:flutter/material.dart';
import 'package:habit_tracker_app/provider/habit_provider.dart';
import 'package:habit_tracker_app/screens/habit_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HabitProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Habit List App',
        home: HabitListScreen(),
      ),
    );
  }
}
