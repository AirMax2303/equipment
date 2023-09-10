import 'package:equipment/pofile/bloc/profile_bloc.dart';
import 'package:equipment/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toast/toast.dart';
import 'equipment/bloc/equipment_bloc.dart';
import 'bloc/observer.dart';
import 'equipment/service/equipment_service.dart';
import 'package:equipment/pofile/service/profile_service.dart';

import 'main_chapter/service/work_service.dart';

//eq092023@mail.ru
//UoY3LI2ua,ro
//APP
//uGXQH6Htf17jafpuxedA

//flutter pub run build_runner build --delete-conflicting-outputs

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  GetIt.instance.registerSingleton<EquipmentService>(EquipmentService());
  GetIt.instance.registerSingleton<ProfileService>(ProfileService());
  GetIt.instance.registerSingleton<WorkService>(WorkService());
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ProfileBloc>(
      create: (BuildContext context) => ProfileBloc(GetIt.instance.get<ProfileService>()),
    ),
    BlocProvider<EquipmentBloc>(
      create: (BuildContext context) => EquipmentBloc(GetIt.instance.get<EquipmentService>()),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp.router(
      theme: ThemeData(
//        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
        dialogBackgroundColor: Colors.white,
      ),
      routerConfig: router,
    );
  }
}
