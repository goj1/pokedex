import 'package:flutter/material.dart';

class GetDeviceLocale extends StatefulWidget {

  const GetDeviceLocale({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GetDeviceLocaleState();
  }
}

class _GetDeviceLocaleState extends State<GetDeviceLocale>
    with WidgetsBindingObserver {

  Locale? _locale;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();

    WidgetsBinding.instance
        .addPostFrameCallback((_) => setLocale(context));
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);

    setState(() {
      _locale = locales?.first ?? _locale;
    });
  }

  setLocale(BuildContext context) {
    final Locale locale = Localizations.localeOf(context);

    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Woolha.com Flutter Tutorial'),
        backgroundColor: Colors.teal,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text('Locale: ${_locale?.languageCode}-${_locale?.countryCode}'),
        ),
      ),
    );
  }
}