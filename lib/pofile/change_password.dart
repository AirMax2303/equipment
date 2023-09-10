import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../widgets/widgets.dart';

Dialog changePassword(BuildContext context) {
  final formKey = GlobalKey<FormBuilderState>();
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.blackText14('Изменение пароля'),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset('assets/close.svg')),
            ],
          ),
          FormBuilder(
            key: formKey,
            child: Column(
              children: [
                FormBuilderTextField(
                  name: 'password',
                  decoration: AppDecoration.inputPassword('Пароль*', 'assets/password.svg'),
                  obscureText: true,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                  ]),
                ),
                const SizedBox(height: 25),
                FormBuilderTextField(
                  name: 'confirm_password',
                  decoration: AppDecoration.inputPassword('Подвертдить пароль*', 'assets/password.svg'),
                  obscureText: true,
                  validator: (value) => formKey.currentState?.fields['password']?.value != value ? 'Пароли не равны' : null,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          AppButton.filledBlackButton('Сохранить', onPressed: () {
            if (formKey.currentState?.saveAndValidate() ?? false) {
              Navigator.pop(context, formKey.currentState?.fields['password']?.value);
            }
          }),
        ]),
      ),
    ),
  );
}

