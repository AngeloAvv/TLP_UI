import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tlp_ui/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storageDirectory = await getTemporaryDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(storageDirectory.path),
  );

  runApp(App());
}
