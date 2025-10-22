import 'package:epurse/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../language/app_localizations.dart';
import '../language/bloc/language_bloc.dart';

class ServerDownDialog extends StatelessWidget {
  final String message;
  const ServerDownDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final localizations =
        AppLocalizations(context.read<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
    return AlertDialog(
      title: Text(
        localizations.get('server_unavailable'),
        style: Theme.of(context).textTheme.displaySmall,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Image.asset("lib/core/assets/server-down.png", scale: 5),
          const SizedBox(height: 10),
          Text(localizations.get('please_try_again_later')),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              context.goBack();
            },
            child: Text(localizations.get('ok'))),
      ],
    );
  }
}
