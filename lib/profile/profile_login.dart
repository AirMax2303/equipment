import 'package:equipment/profile/repository/profile_repository.dart';
import 'package:equipment/widgets/text_extension.dart';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get_it/get_it.dart';
import 'send_message.dart';
import 'bloc/profile_bloc.dart';

class ProfileLogin extends StatelessWidget {
  ProfileLogin({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();
  final service = GetIt.instance.get<ProfileRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.blackColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/logo.svg'),
                  const SizedBox(
                    width: 200,
                  ),
                  IconBox(
                    'assets/message.svg',
                    onPressed: () {
                      if (formKey.currentState?.fields['email']?.validate() ?? false) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SendMessage(email: "formKey.currentState?.fields['name']?.value")));
                      }
                    },
                  ),
                  const SizedBox(width: 5)
                ],
              ),
              const SizedBox(height: 300),
              const Text('Войти').style16w700(color: Colors.white),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: FormBuilder(
                    key: formKey,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'email',
                          initialValue: service.profile.email,
                          decoration: AppDecoration.input('Эл.почта', 'assets/email.svg', fillColor: AppColor.profileInputColor),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                            FormBuilderValidators.email(errorText: 'Введите адрес электронной почты'),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'password',
                          initialValue: service.profile.password,
                          decoration:
                              AppDecoration.input('Пароль*', 'assets/password.svg', fillColor: AppColor.profileInputColor),
                          obscureText: true,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
//                            FormBuilderValidators.minLength(6),
                          ]),
                        ),
                        const SizedBox(height: 25),
                        AppFilledButton('Войти', backgroundColor: AppColor.blueColor, onPressed: () {
                          if (formKey.currentState?.saveAndValidate() ?? false) {
                            if (service.profile.email != formKey.currentState?.fields['email']?.value) {
                              formKey.currentState?.fields['email']?.invalidate('Не верный адрес электронной почты');
                            } else if (service.profile.password != formKey.currentState?.fields['password']?.value) {
                              formKey.currentState?.fields['password']?.invalidate('Не верный пароль');
                            } else {
                              BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoMainScreen());
                            }
                          }
                        }),
                        TextButton(
                          onPressed: () {
                            BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoProfileScreen());
                          },
                          child: const Text('Регистрация').style12w300(color: Colors.white),
                        )
                      ],
                    )),
              )
            ],
          ),
        )));
  }
}
