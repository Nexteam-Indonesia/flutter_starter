import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../components/base/base_scaffold.dart';
import '../../components/button/primary_button.dart';
import '../../components/input/text_input.dart';

@RoutePage()
class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final FormGroup formGroup = fb.group({
    'email': ['', Validators.required, Validators.email],
  });

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: ReactiveFormBuilder(
        form: () => formGroup,
        builder: (context, formGroup, child) {
          return Column(
            children: [
              const TextInput(
                title: 'Email',
                formControlName: 'email',
                hint: 'Masukkan Email Anda',
                textInputType: TextInputType.emailAddress,
              ),
              ReactiveFormConsumer(
                builder: (context, formGroup, child) {
                  return PrimaryButton(
                    isEnable: formGroup.valid,
                    title: 'Submit',
                    onTap: () {},
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
