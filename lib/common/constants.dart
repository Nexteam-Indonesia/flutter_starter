import 'package:reactive_forms/reactive_forms.dart';

class Constants {
  static final Map<String, String Function(Object)> messageErrors = {
    ValidationMessage.required: (_) => 'Inputan ini tidak boleh kosong',
    ValidationMessage.email: (_) => 'Email tidak valid',
    ValidationMessage.number: (_) => 'Inputan hanya boleh angka',
    ValidationMessage.minLength: (e) => "Minimal ${(e as Map)['requiredLength']} karakter",
    ValidationMessage.maxLength: (e) => 'Maksimal ${(e as Map)['requiredLength']} karakter',
    'validation_error': (e) => (e as String),
  };
}
