import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../template/screens.dart';
import '../bloc/web_bloc.dart';
import '../model/web_model.dart';
import '../service/web_service.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WebBloc>(
      create: (BuildContext context) => WebBloc(GetIt.instance.get<WebService>()),
      child: BlocConsumer<WebBloc, WebState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const EmptyScreen(),
          success: (data) => WebScreen(list: data.list,),
          orElse: () => const EmptyScreen(),
        );
      }),
    );
  }
}

class WebScreen extends StatelessWidget {
  List<WebModel> list;

  WebScreen({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EmptyScreen();
  }
}
