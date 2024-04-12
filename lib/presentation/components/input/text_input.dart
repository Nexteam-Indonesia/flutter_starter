import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../common/constants.dart';
import '../../theme/theme.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    required this.title,
    required this.formControlName,
    required this.hint,
    this.textInputType = TextInputType.text,
    this.isRequiredText = false,
    this.validationMessages = const {},
    this.maxLines = 1,
    this.prefix,
    this.suffix,
    this.onChanged,
  });

  final String title;
  final String formControlName;
  final String hint;
  final TextInputType textInputType;
  final bool isRequiredText;
  final Map<String, String Function(Object)> validationMessages;
  final int maxLines;
  final Widget? prefix;
  final Widget? suffix;
  final Function(FormControl<Object?>)? onChanged;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final Map<String, String Function(Object)> messages = Constants.messageErrors;

  @override
  void initState() {
    super.initState();
    messages.addAll(widget.validationMessages);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.title,
              ),
              if (widget.isRequiredText)
                TextSpan(
                  text: "*",
                  style: CustomTextTheme.caption.copyWith(color: ColorTheme.statusRed),
                ),
            ],
          ),
          style: CustomTextTheme.paragraph1.copyWith(fontWeight: FontWeight.w700),
        ),
        6.verticalSpace,
        ReactiveTextField(
          keyboardType: widget.textInputType,
          formControlName: widget.formControlName,
          style: CustomTextTheme.paragraph2.copyWith(color: ColorTheme.neutral[800]),
          decoration: GenerateTheme.inputDecoration(widget.hint).copyWith(
            suffixIcon: widget.suffix,
            prefixIcon: widget.prefix,
          ),
          validationMessages: messages,
          maxLines: widget.maxLines,
          onChanged: widget.onChanged,
        )
      ],
    );
  }
}
