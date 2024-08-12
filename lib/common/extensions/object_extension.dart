extension ObjectExtensionExt on Object? {
  int? toIntX() => this == null ? null : int.tryParse(toString());
  double? toDoubleX() => this == null ? null : double.tryParse(toString());

  String? toStringX() => this == null ? null : toString();
  String toStringNotNullX() => this == null ? '' : toString();

  num? toNumX() => this == null ? null : num.tryParse(toString());

  bool toBoolX() => this == null ? false : toString().toLowerCase() == 'true';

  DateTime? toDateX() => this == null ? null : DateTime.tryParse(toString());
}
