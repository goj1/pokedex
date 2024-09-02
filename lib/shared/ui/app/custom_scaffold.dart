import 'dart:async';
import 'dart:developer' as developer;
import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/ui/controllers/core_controller.dart';
import 'package:pokedex/shared/ui/app/custom_app_bar.dart';
import 'package:pokedex/shared/ui/app/custom_safe_area.dart';
import 'package:pokedex/shared/ui/app/custom_system_ui_overlay.dart';
import 'package:pokedex/shared/ui/app/device_state.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:pokedex/shared/ui/loading_indicators/loading_indicator.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';
import 'package:pokedex/shared/util/enums/core_enum.dart';

class CustomScaffold extends StatefulWidget {
  final Object? controller;
  final bool withAppBar;
  final String? namePage;
  final List<Widget>? icons;
  final Color? colorIcon;
  final Widget child;
  final FloatingActionButton? floatButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final List<Widget>? pages;
  final Widget? drawer;
  final bool? withSafeArea;
  final Widget? logo;
  final double? iconSize;
  final String? backgroundImage;

  const CustomScaffold({
    super.key,
    required this.withAppBar,
    required this.child,
    this.controller,
    this.namePage,
    this.icons,
    this.colorIcon,
    this.floatButton,
    this.floatingActionButtonLocation,
    this.pages,
    this.drawer,
    this.withSafeArea,
    this.logo,
    this.iconSize,
    this.backgroundImage,
  });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  final _coreController = getIt<CoreController>();
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  bool deviceNetworkConnectivity = false;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    super.dispose();
    _connectivitySubscription.cancel();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;

    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }

    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: AppColors.white,
            drawer: widget.drawer,
            appBar: widget.withAppBar
                ? CustomAppBar(
                    namePage: widget.namePage ?? '',
                    icons: widget.icons,
                    iconSize: widget.iconSize,
                    colorIcon: widget.colorIcon,
                    logo: widget.logo,
                    sContext: context,
                  )
                : null,
            body: AnnotatedRegion(
              value: CustomSystemUIOverlay.getCustomSystemUIOverlay(),
              child: CustomSafeArea(
                backgroundImage: widget.backgroundImage,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: _connectionStatus == ConnectivityResult.none ? const DeviceState() : widget.child,
                ),
              ),
            ),
            floatingActionButton: widget.floatButton,
            floatingActionButtonLocation: widget.floatingActionButtonLocation,
          ),
        ],
      ),
    );
  }

  Widget getLoadPage(Widget child) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: Stack(
        children: [
          child,
          AnimatedOpacity(
            opacity: _coreController.isLoading ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 700),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300.0,
                  height: 300.0,
                  child: Image.asset('assets/images/logo_round.png'),
                ),
                Text(
                  'NOME DO APP',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: DSFontSize.bigger,
                  ),
                ),
                const SizedBox(height: 16.0),
                LoadingIndicator(
                  size: CoreEnum.big,
                  color: AppColors.primary,
                  backgroundColor: AppColors.white,
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
