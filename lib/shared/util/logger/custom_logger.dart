import 'package:logger/logger.dart';

class CustomLogger {
  late Logger _logger;

  CustomLogger._internal();
  static final CustomLogger _customLogger = CustomLogger._internal();
  factory CustomLogger() => _customLogger;

  void inicialize() {
    _logger = Logger(
      printer: PrettyPrinter(),
    );
  }

  void printLog(String message) {
    _logger.d(message);
  }
}