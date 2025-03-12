import 'package:flutter/material.dart';
import 'package:flutter_temeplete/features/todos/presentation/screens/display_screen.dart';
import 'package:flutter_temeplete/features/todos/presentation/screens/todo_screen.dart';
import 'app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) => TodoScreen(),
    AppRoutes.display: (context) => DetailPage(),
  };
}
