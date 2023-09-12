import 'package:equipment/profile/profile_login.dart';
import 'package:equipment/profile/profile_register.dart';
import 'package:equipment/profile/userdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main_chapter/main_page.dart';
import 'bloc/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage(this.event, {Key? key}) : super(key: key);
  ProfileEvent event;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
        bloc: BlocProvider.of<ProfileBloc>(context)..add(event),
        listener: (context, state) {
          state.mapOrNull(
            mainScreen: (_) => Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage())),
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
        });
  }
}

