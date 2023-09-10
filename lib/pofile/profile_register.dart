import 'package:equipment/pofile/service/profile_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

import 'dialog_ok_register.dart';
import 'bloc/profile_bloc.dart';

class ProfileRegister extends StatelessWidget {
  ProfileRegister({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();
  final service = GetIt.instance.get<ProfileService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/logo.svg'),
                  IconButton(
                      onPressed: () {
                        BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoLoginScreen());
//                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileLogin()));
                      },
                      icon: SvgPicture.asset('assets/back-arrow.svg')),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              AppText.whiteText16('Регистрация'),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: FormBuilder(
                    key: formKey,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'name',
                          initialValue: service.profile.name,
                          decoration: AppDecoration.input('Название компании*', 'assets/company.svg'),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'email',
                          initialValue: service.profile.email,
                          decoration: AppDecoration.input('Эл.почта', 'assets/email.svg'),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                            FormBuilderValidators.email(errorText: 'Введите адрес электронной почты'),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'phone',
                          initialValue: service.profile.phone,
                          inputFormatters: [PhoneInputFormatter()],
                          decoration: AppDecoration.input('Телефон*', 'assets/phone.svg'),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'password',
                          initialValue: service.profile.password,
                          decoration: AppDecoration.input('Пароль*', 'assets/password.svg'),
                          obscureText: true,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
//                            FormBuilderValidators.minLength(6),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'confirm_password',
                          initialValue: service.profile.password,
                          decoration: AppDecoration.input('Подвертдить пароль*', 'assets/password.svg'),
                          obscureText: true,
                          validator: (value) =>
                              formKey.currentState?.fields['password']?.value != value ? 'Пароли не равны' : null,
                        ),
                        const SizedBox(height: 16),
                        AppButton.filledInputButton('Регистрация', onPressed: () {
                          if (formKey.currentState?.saveAndValidate() ?? false) {
                            BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.saveProfile(
                                name: formKey.currentState?.fields['name']?.value,
                                email: formKey.currentState?.fields['email']?.value,
                                phone: formKey.currentState?.fields['phone']?.value,
                                password: formKey.currentState?.fields['password']?.value));
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) {
                                  return dialogOkRegister(context, 'Вы успешно зарегистрировались');
                                });
                            BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoLoginScreen());
                          }
                          print(formKey.currentState?.value.toString());
                        }),
                        const SizedBox(height: 10),
                        const Text(
                          'Нажимая “Регистрация” я соглашусь с условиями пользовательского соглашения, политикой конфидециальности и принимаю условия публичной оферты',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
              )
            ],
          ),
        )));
  }
}
