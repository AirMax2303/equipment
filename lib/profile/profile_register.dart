import 'package:equipment/profile/repository/profile_repository.dart';
import 'package:equipment/widgets/text_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equipment/widgets/widgets.dart';
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
                children: [
                  SvgPicture.asset('assets/logo.svg'),
                  IconButton(
                      onPressed: () {
                        BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoLoginScreen());
                      },
                      icon: SvgPicture.asset('assets/back-arrow.svg')),
                ],
              ),
              const SizedBox(height: 100),
              const Text('Регистрация').style16w700(color: Colors.white),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: FormBuilder(
                    key: formKey,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'name',
                          initialValue: service.profile.name,
                          decoration: AppDecoration.input('Название компании*', 'assets/company.svg',
                              fillColor: AppColor.profileInputColor),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                          ]),
                        ),
                        const SizedBox(height: 16),
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
                          name: 'phone',
                          initialValue: service.profile.phone,
                          inputFormatters: [PhoneInputFormatter()],
                          decoration: AppDecoration.input('Телефон*', 'assets/phone.svg', fillColor: AppColor.profileInputColor),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
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
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'confirm_password',
                          initialValue: service.profile.password,
                          decoration: AppDecoration.input('Подвертдить пароль*', 'assets/password.svg',
                              fillColor: AppColor.profileInputColor),
                          obscureText: true,
                          validator: (value) =>
                              formKey.currentState?.fields['password']?.value != value ? 'Пароли не равны' : null,
                        ),
                        const SizedBox(height: 25),
                        AppFilledButton('Регистрация', backgroundColor: AppColor.blueColor, onPressed: () {
                          if (formKey.currentState?.saveAndValidate() ?? false) {
                            BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.saveProfile(
                                name: formKey.currentState?.fields['name']?.value,
                                email: formKey.currentState?.fields['email']?.value,
                                phone: formKey.currentState?.fields['phone']?.value,
                                password: formKey.currentState?.fields['password']?.value));
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) {
                                  return dialogOkRegister(context, 'Вы успешно зарегистрировались', service.errorMail);
                                });
                            BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoLoginScreen());
                          }
                        }),
                        const SizedBox(height: 16),
                        RichText(
                            text: const TextSpan(
                                text: 'Нажимая  “Регистрация”  я  соглашусь  с  условиями  ',
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                                children: [
                              TextSpan(
                                  text: 'пользовательского  соглашения',
                                  style: TextStyle(color: AppColor.blueColor, fontSize: 14, fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: ', ', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: ' политикой конфидециальности  ',
                                  style: TextStyle(color: AppColor.blueColor, fontSize: 14, fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: 'и  принимаю  условия  ',
                                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: 'публичной  оферты',
                                  style: TextStyle(color: AppColor.blueColor, fontSize: 14, fontWeight: FontWeight.w500)),
                            ])),
                        const SizedBox(height: 16),
                      ],
                    )),
              )
            ],
          ),
        )));
  }
}
