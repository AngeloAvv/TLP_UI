import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Divider(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              AppLocalizations.of(context)?.label_or ?? 'label_or',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: Divider(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.2),
            ),
          ),
        ],
      );
}
