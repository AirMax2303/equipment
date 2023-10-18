import 'package:equipment/repository/repository.dart';
import 'package:equipment/web/pages/home_page.dart';
import 'package:equipment/web/service/web_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<AppRepository>(AppRepository());
  GetIt.instance.registerSingleton<WebService>(WebService(GetIt.instance.get<AppRepository>()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        dialogBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WebHomePage()
//      MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


