import 'package:equipment/ppr/service/ppr_service.dart';
import 'package:equipment/profile/bloc/profile_bloc.dart';
import 'package:equipment/repository/repository.dart';
import 'package:equipment/route/route.dart';
import 'package:equipment/works_day/service/work_day_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toast/toast.dart';
import 'bloc/observer.dart';
import 'calendar/service/calendar_service.dart';
import 'equipment/bloc/equipment_bloc.dart';
import 'equipment/name/bloc/name_bloc.dart';
import 'equipment/name_filter/bloc/name_filter_bloc.dart';
import 'equipment/service/equipment_service.dart';
import 'package:equipment/profile/service/profile_service.dart';

import 'main_chapter/service/main_chapter_service.dart';
import 'order/service/order_service.dart';

//eq092023@mail.ru
//UoY3LI2ua,ro
//APP
//uGXQH6Htf17jafpuxedA

//flutter pub run build_runner build --delete-conflicting-outputs

void main() {
  WidgetsFlutterBinding.ensureInitialized();
//  Bloc.observer = AppBlocObserver();
  GetIt.instance.registerSingleton<AppRepository>(AppRepository());
  GetIt.instance.registerSingleton<EquipmentService>(EquipmentService(GetIt.instance.get<AppRepository>()));
  GetIt.instance.registerSingleton<ProfileService>(ProfileService());
  GetIt.instance.registerSingleton<MainChapterService>(MainChapterService(GetIt.instance.get<AppRepository>()));
  GetIt.instance.registerSingleton<PprService>(PprService(GetIt.instance.get<AppRepository>()));
  GetIt.instance.registerSingleton<OrderService>(OrderService(GetIt.instance.get<AppRepository>()));
  GetIt.instance.registerSingleton<WorkDayService>(WorkDayService(GetIt.instance.get<AppRepository>()));
  GetIt.instance.registerSingleton<EquipmentBloc>(EquipmentBloc(GetIt.instance.get<EquipmentService>()));
  GetIt.instance.registerSingleton<CalendarService>(CalendarService(GetIt.instance.get<AppRepository>()));
//  GetIt.instance.registerSingleton<OrderBloc>(OrderBloc(GetIt.instance.get<OrderService>()));
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ProfileBloc>(
      create: (BuildContext context) => ProfileBloc(GetIt.instance.get<ProfileService>()),
    ),
//    BlocProvider<NameFilterBloc>(
//      create: (BuildContext context) => NameFilterBloc(GetIt.instance.get<EquipmentService>()),
//    ),
//    BlocProvider<EquipmentBloc>(
//      create: (BuildContext context) => GetIt.instance.get<EquipmentBloc>(),
//    ),
//    BlocProvider<PprBloc>(
//      create: (BuildContext context) => PprBloc(GetIt.instance.get<PprService>()),
//    ),
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
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFF3F60EE),
      ),
      routerConfig: router,
    );
  }
}
