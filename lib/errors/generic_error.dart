import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GenericError extends LocalizedError {
  @override
  String? localizedString(BuildContext context) =>
      AppLocalizations.of(context)?.error_generic;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenericError && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}
