import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../equipment/bloc/equipment_bloc.dart';
import '../widgets/widgets.dart';

Dialog selectDialog(BuildContext context) {

  return Dialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      insetPadding: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Column(
                children: [
                  AppButton.filledBlackButton('Сохранить', onPressed: () {
                    Navigator.pop(context);
                  }),
                  AppButton.textButton('Отменить', onPressed: () {
                    Navigator.pop(context);
                  })
                ],
              ),
            ),
          ],
        ),
      ));
}

Dialog dialogBloc(BuildContext context) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: BlocConsumer<EquipmentBloc, EquipmentState>(
        bloc: GetIt.instance.get<EquipmentBloc>(),
        listener: (context, state) {
          state.mapOrNull();
        }, builder: (context, state) {
      return state.maybeMap(
        orElse: () => Container(),
      );
    }),
  );
}
