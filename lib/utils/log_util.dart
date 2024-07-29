import 'package:flutter/foundation.dart';

void debugLog(String message, {Object? error}) {
  if (kDebugMode) {
    print('Log: $message \n Error: $error');
  }
}
