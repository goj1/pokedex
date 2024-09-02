import 'package:pokedex/infra/factories/navigation/custom_navigator.dart';
import 'package:pokedex/infra/factories/navigation/pages.dart';
import 'package:pokedex/shared/ui/buttons/button_default.dart';
import 'package:flutter/material.dart';

class ServerState extends StatelessWidget {
  const ServerState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Icon(
              Icons.dns_rounded,
              size: 48.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'O servidor está offline. \n Tente novamente mais tarde.',
              textAlign: TextAlign.center,
            ),
          ),
          ButtonDefault(
            label: const Text('Tentar novamente'),
            disabled: false,
            rounded: true,
            onTap: () async {
              CustomNavigator.goToWithClearStack(context, Pages.load);
            },
          )
        ],
      ),
    );
  }
}
