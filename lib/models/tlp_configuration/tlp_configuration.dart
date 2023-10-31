import 'package:equatable/equatable.dart';
import 'package:tlp_ui/models/tlp_entry/tlp_entry.dart';

class TLPConfiguration extends Equatable {
  final Map<String, TLPEntry> _entries;

  const TLPConfiguration._(this._entries);

  const TLPConfiguration.empty() : _entries = const {};

  factory TLPConfiguration.fromEntries(List<TLPEntry> entries) =>
      TLPConfiguration._(
        Map.fromEntries(entries.map((entry) => MapEntry(entry.key, entry))),
      );

  List<TLPEntry> get entries => _entries.values.toList(growable: false);

  String? value(String key) => _entries[key]?.value;

  TLPEntry? operator [](String key) => _entries[key];

  void setAll(List<TLPEntry> entries) {
    _entries.clear();
    _entries.addEntries(entries.map((entry) => MapEntry(entry.key, entry)));
  }

  void updateAll(List<TLPEntry> entries) {
    _entries.addEntries(entries.map((entry) => MapEntry(entry.key, entry)));
  }

  @override
  List<Object?> get props => [_entries];
}
