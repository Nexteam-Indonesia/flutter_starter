import 'dart:collection';

import 'package:reactive_forms/reactive_forms.dart';

class Constants {
  /// Default validation messages. Unmodifiable: widgets that need extra or
  /// overriding messages merge them into a copy, e.g.
  /// `{...Constants.messageErrors, ...custom}`.
  static final Map<String, String Function(Object)> messageErrors = UnmodifiableMapView({
    ValidationMessage.required: (_) => 'Inputan ini tidak boleh kosong',
    ValidationMessage.email: (_) => 'Email tidak valid',
    ValidationMessage.number: (_) => 'Inputan hanya boleh angka',
    ValidationMessage.minLength: (e) => "Minimal ${(e as Map)['requiredLength']} karakter",
    ValidationMessage.maxLength: (e) => 'Maksimal ${(e as Map)['requiredLength']} karakter',
    'validation_error': (e) => e as String,
  });
}
