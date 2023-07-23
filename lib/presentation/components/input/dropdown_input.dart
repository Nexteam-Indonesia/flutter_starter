import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../theme/theme.dart';

class DropdownInput<T extends Object> extends StatelessWidget {
  const DropdownInput({
    super.key,
    required this.title,
    required this.formControlName,
    required this.hint,
    required this.items,
    this.isRequiredText = false,
    this.onChanged,
    this.readOnly = false,
    this.validationMessages = const {},
  });

  final String title;
  final String formControlName;
  final String hint;
  final List<Map<String, dynamic>> items;
  final bool isRequiredText;
  final Function(FormControl<T?>?)? onChanged;
  final bool readOnly;
  final Map<String, String Function(Object)> validationMessages;

  @override
  Widget build(BuildContext context) {
    final Map<String, String Function(Object)> message = {
      ValidationMessage.required: (_) => 'inputan ini tidak boleh kosong',
      'validation_error': (e) => (e as String),
    };
    message.addAll(validationMessages);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: title,
              ),
              if (isRequiredText)
                TextSpan(
                  text: "*",
                  style: CustomTextTheme.caption
                      .copyWith(color: ColorTheme.primary),
                ),
            ],
          ),
          style:
              CustomTextTheme.paragraph1.copyWith(fontWeight: FontWeight.w700),
        ),
        8.verticalSpace,
        ReactiveDropdownField<T>(
          items: items
              .map(
                (e) => DropdownMenuItem<T>(
                  value: e['value'],
                  child:
                      Text(e['text'] ?? '-', style: CustomTextTheme.paragraph1),
                ),
              )
              .toList(),
          formControlName: formControlName,
          decoration: GenerateTheme.inputDecoration(hint),
          onChanged: onChanged,
          readOnly: readOnly,
          validationMessages: message,
          isExpanded: true,
        )
      ],
    );
  }
}
