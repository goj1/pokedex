import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/ui/app/app.dart';
import 'package:pokedex/shared/util/logger/custom_logger.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupProviders();
  CustomLogger().inicialize();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => initializeDateFormatting('pt_BR', null).then((_) => runApp(App())));
}