import 'package:freezed_annotation/freezed_annotation.dart';

part 'tlp_entry.freezed.dart';

@freezed
abstract class TLPEntry with _$TLPEntry {
  const TLPEntry._();

  const factory TLPEntry({
    required String key,
    required String value,
  }) = _TLPEntry;
}
