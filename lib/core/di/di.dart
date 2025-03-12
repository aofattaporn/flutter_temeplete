import 'package:flutter_temeplete/core/di/todo_di.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Load DI from each feature
  setupTodoDI();
}
