import 'package:equipment/widgets/appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equipment/profile/service/profile_service.dart';
import 'package:equipment/profile/tarif.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

import '../other/send_message.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'bloc/profile_bloc.dart';
import 'change_password.dart';

class UserDataScreen extends StatelessWidget {
  UserDataScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();
  final service = GetIt.instance.get<ProfileService>();
  final ValueNotifier<bool> change = ValueNotifier<bool>(false);
  final ValueNotifier<String> tarif = ValueNotifier<String>('Начальный');

  @override
  Widget build(BuildContext context) {
    final ProfileService service = GetIt.instance.get<ProfileService>();
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.none),
      appBar: appBar(context, 'Данные пользователя', {AppBarButton.profile}, () {
        BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoMainScreen());
      }),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  const SizedBox(height: 32),
//--------------------------------------------------------------------------------------------------------------------------------
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.blackText14(service.profile.name!),
                      AppIcons.iconButton35(
                          image: 'assets/message_white.svg',
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => SendMessage(email: service.profile.email!)));
                          }),
                    ],
                  ),
                  const SizedBox(height: 16),
//--------------------------------------------------------------------------------------------------------------------------------
                  FormBuilder(
                    key: formKey,
                    onChanged: () {
                      if (!change.value &&
                          (formKey.currentState?.fields['phone']?.value != service.profile.phone ||
                              formKey.currentState?.fields['email']?.value != service.profile.email)) {
                        change.value = true;
                      }
                    },
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'phone',
                          initialValue: service.profile.phone!,
                          inputFormatters: [PhoneInputFormatter()],
                          decoration: AppDecoration.input('Телефон*', 'assets/phone.svg', fillColor: AppColor.profileInputColor),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'email',
                          initialValue: service.profile.email!,
                          decoration: AppDecoration.input('Эл.почта', 'assets/email.svg', fillColor: AppColor.profileInputColor),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                            FormBuilderValidators.email(errorText: 'Введите адрес электронной почты'),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  ValueListenableBuilder(
                      valueListenable: change,
                      builder: (BuildContext context, value, Widget? child) {
                        if (value) {
                          return AppButton.filledInputButton('Сохранить', onPressed: () {
                            BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.saveUserData(
                              email: formKey.currentState?.fields['email']?.value,
                              phone: formKey.currentState?.fields['phone']?.value,
                            ));
                          });
                        } else {
                          return const SizedBox();
                        }
                      }),
                  const SizedBox(height: 20),
//--------------------------------------------------------------------------------------------------------------------------------
                  ValueListenableBuilder(
                    valueListenable: tarif,
                    builder: (BuildContext context, value, Widget? child) {
                      return Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Container(
                            height: 130,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xCC3F60EE),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Color(0xFF070159), Color(0xFF072FEE)]),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    const SizedBox(height: 40),
                                    AppText.whiteText16('Ваш тариф $value'),
                                    AppText.whiteText13(
                                      'Действует до 01.01.2023',
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Image.asset('assets/Group 528.png'),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 16),
//--------------------------------------------------------------------------------------------------------------------------------
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectTarif())).then((value) {
                        tarif.value = value;
                        BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.saveTarif(tarif: value));
                      });
                    },
                    child: Container(
                        height: 60,
                        color: AppColor.backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.blackText14('Тарифы и условия'),
                              SvgPicture.asset('assets/arrow.svg'),
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
//--------------------------------------------------------------------------------------------------------------------------------
                  InkWell(
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) {
                            return changePassword(context);
                          }).then(
                        (value) => BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.savePassword(password: value!)),
                      );
                    },
                    child: Container(
                        height: 60,
                        color: AppColor.backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  AppIcons.icon35(image: 'assets/userpassword.svg'),
                                  const SizedBox(width: 5),
                                  AppText.blackText14('Сменить пороль'),
                                ],
                              ),
                              SvgPicture.asset('assets/arrow.svg'),
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
//--------------------------------------------------------------------------------------------------------------------------------
                  InkWell(
                    onTap: () {
                      BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.gotoLoginScreen());
                    },
                    child: Container(
                        height: 60,
                        color: AppColor.backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  AppIcons.icon35(image: 'assets/log-out.svg'),
                                  const SizedBox(width: 5),
                                  AppText.blackText14('Выйти'),
                                ],
                              ),
                              SvgPicture.asset('assets/arrow.svg'),
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
//--------------------------------------------------------------------------------------------------------------------------------
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
