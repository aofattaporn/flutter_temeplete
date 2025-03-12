import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_temeplete/core/constants/common_constant.dart';
import 'package:flutter_temeplete/core/di/di.dart';
import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart';
import 'package:flutter_temeplete/features/todos/presentation/bloc/todo_bloc.dart';
import 'package:flutter_temeplete/features/todos/presentation/bloc/todo_event.dart';
import 'package:flutter_temeplete/features/todos/presentation/routes/app_routes.dart';
import 'package:flutter_temeplete/features/todos/presentation/routes/app_screens.dart';
import 'package:flutter_temeplete/features/todos/presentation/theme/app_theme.dart';

import 'package:mockito/annotations.dart';

@GenerateMocks([TodoRepository])
void main() async {
  await dotenv.load();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TodoBloc>()..add(LoadTodos()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: CommonConstant.appTitle,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system, // Uses system setting (light/dark)
        initialRoute: AppRoutes.home,
        routes: AppPages.routes,
      ),
    );
  }
}
