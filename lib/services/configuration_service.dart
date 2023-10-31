import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:tlp_ui/misc/constants.dart';
import 'package:tlp_ui/models/tlp_configuration/tlp_configuration.dart';
import 'package:tlp_ui/models/tlp_entry/tlp_entry.dart';

/// Abstract class of ConfigurationService
abstract class ConfigurationService {
  Future<List<File>> get files;

  Future<TLPConfiguration> load(String path);

  Future<TLPConfiguration> save(
    Map<String, String> configuration, {
    required String path,
  });
}

/// Implementation of the base interface ConfigurationService
class ConfigurationServiceImpl implements ConfigurationService {
  const ConfigurationServiceImpl();

  @override
  Future<TLPConfiguration> load(String path) async {
    final entries = await _readFile(File(path));
    return TLPConfiguration.fromEntries(entries);
  }

  @override
  Future<TLPConfiguration> save(
    Map<String, String> configuration, {
    required String path,
  }) async {
    final content = configuration.entries
        .map((entry) =>
            '${entry.key}${K.defaultKeyValueSeparator}${entry.value}')
        .join('\n');

    final tempFolder = await getTemporaryDirectory();
    final tmpPath = p.join(tempFolder.path, 'configuration.tmp');
    await File(tmpPath).writeAsString(content);

    await Process.run(
      'pkexec',
      ['mv', tmpPath, path],
      runInShell: true,
    );

    final entries = configuration.entries
        .map((entry) => TLPEntry(
              key: entry.key,
              value: entry.value,
            ))
        .toList(growable: false);

    return TLPConfiguration.fromEntries(entries);
  }

  @override
  Future<List<File>> get files async {
    final dir = Directory(K.defaultFolderPath);

    final List<File> files = [];
    if (await dir.exists()) {
      final contents = dir.listSync();

      files.addAll(contents
          .whereType<File>()
          .where((file) => file.path.endsWith(K.defaultFileExtension)));
    }

    final defaultConfig = File(K.defaultPath);

    return [
      ...files,
      if (await defaultConfig.exists()) defaultConfig,
    ];
  }

  Future<List<TLPEntry>> _readFile(File file) async {
    final content = await file.readAsString();
    final lines = content.split('\n');

    return lines
        .where((line) => line.isNotEmpty)
        .where((line) => !line.startsWith(K.defaultCommentPrefix))
        .where((line) => line.contains(K.defaultKeyValueSeparator))
        .map(
          (line) => TLPEntry(
              key: line.split(K.defaultKeyValueSeparator).first,
              value: line.split(K.defaultKeyValueSeparator).last),
        )
        .toList(growable: false);
  }
}
