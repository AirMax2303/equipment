import 'package:equipment/ppr/repository/ppr_repository.dart';
import 'package:equipment/profile/bloc/profile_bloc.dart';
import 'package:equipment/profile/repository/profile_repository.dart';
import 'package:equipment/route/route.dart';
import 'package:equipment/service/service.dart';
import 'package:equipment/works_day/repository/work_day_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toast/toast.dart';
import 'bloc/observer.dart';
import 'calendar/repository/calendar_repository.dart';
import 'equipment/bloc/equipment_bloc.dart';
import 'equipment/repository/equipment_repository.dart';
import 'main_chapter/repository/main_chapter_repository.dart';
import 'order/repository/order_repository.dart';

//eq092023@mail.ru
//UoY3LI2ua,ro
//APP
//uGXQH6Htf17jafpuxedA

//flutter pub run build_runner build --delete-conflicting-outputs

void main() {
  WidgetsFlutterBinding.ensureInitialized();
//  Bloc.observer = AppBlocObserver();
  GetIt.instance.registerSingleton<AppService>(AppService());
  GetIt.instance.registerSingleton<EquipmentRepository>(EquipmentRepository(GetIt.instance.get<AppService>()));
  GetIt.instance.registerSingleton<ProfileRepository>(ProfileRepository(GetIt.instance.get<AppService>()));
  GetIt.instance.registerSingleton<MainChapterRepository>(MainChapterRepository(GetIt.instance.get<AppService>()));
  GetIt.instance.registerSingleton<PprRepository>(PprRepository(GetIt.instance.get<AppService>()));
  GetIt.instance.registerSingleton<OrderRepository>(OrderRepository(GetIt.instance.get<AppService>()));
  GetIt.instance.registerSingleton<WorkDayRepository>(WorkDayRepository(GetIt.instance.get<AppService>()));
  GetIt.instance.registerSingleton<CalendarRepository>(CalendarRepository(GetIt.instance.get<AppService>()));
  GetIt.instance.registerSingleton<SeriesRepository>(SeriesRepository(GetIt.instance.get<AppService>()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        dialogBackgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFF3F60EE),
      ),
      routerConfig: router,
    );
  }
}
