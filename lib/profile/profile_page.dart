import 'package:equipment/profile/profile_login.dart';
import 'package:equipment/profile/profile_register.dart';
import 'package:equipment/profile/repository/profile_repository.dart';
import 'package:equipment/profile/userdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../main_chapter/main_page.dart';
import 'bloc/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(this.event, {Key? key}) : super(key: key);
  final ProfileEvent event;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(GetIt.instance.get<ProfileRepository>())..add(event),
      child: BlocConsumer<ProfileBloc, ProfileState>(
//          bloc: BlocProvider.of<ProfileBloc>(context)..add(event),
          listener: (context, state) {
            state.mapOrNull(
              mainScreen: (_) => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainPage(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)))),
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const CircularProgressIndicator(),
              profileScreen: (_) => ProfileRegister(),
              loginScreen: (_) => ProfileLogin(),
              userDataScreen: (_) => UserDataScreen(),
              noData: (_) => ProfileLogin(),
              orElse: () {
                return const SizedBox();
              },
            );
          }),
    );
  }
}
