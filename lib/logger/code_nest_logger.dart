import 'package:logger/logger.dart';

class CodeNestLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );

  /// Log info messages
  static void logInfo(String message) {
    _logger.i(message);
  }

  /// Log API or general response
  static void logResponse(dynamic response) {
    _logger.d("Response: $response");
  }

  /// Log error with optional stack trace
  static void logError(String error, [StackTrace? stackTrace]) {
    _logger.e("Error: $error", error: error, stackTrace: stackTrace);
  }

  /// Log warning
  static void logWarning(String message) {
    _logger.w(message);
  }
}
