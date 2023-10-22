import 'dart:io';
import 'package:equipment/other/other.dart';
import 'package:equipment/ppr/ppr_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import 'package:equipment/widgets/text_extension.dart';
import '../models/models.dart';
import '../widgets/appbar.dart';
import '../widgets/dialog.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';
import 'bloc/ppr_bloc.dart';

//ignore: must_be_immutable
class Ppr8Screen extends StatelessWidget {
  Ppr8Screen({Key? key, required this.ppr}) : super(key: key);
  PprModel ppr;
  final formKey = GlobalKey<FormBuilderState>();
  File? file;
  final ValueNotifier<bool> refresh = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    PprType pprType = PprType.values[ppr.pprtype!];
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'ППР', {}, () {
        BlocProvider.of<PprBloc>(context).add(PprEvent.initial(pprType, ppr.equipmentid!));
      }),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: ValueListenableBuilder(
                  valueListenable: refresh,
                  builder: (BuildContext context, value, Widget? child) {
                    return SingleChildScrollView(
                      child: FormBuilder(
                        key: formKey,
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            FormBuilderTextField(
                              name: 'name',
                              initialValue: ppr.name,
                              style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                              decoration: AppDecoration.inputCustom('Описание работы'),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                              ]),
                              onChanged: (value) {
                                ppr = ppr.copyWith(name: value);
                              },
                            ),
//-------------------------------------------------------------------------------------------------------------------------------
                            FormBuilderSwitch(
                              title: const Text('Приоритетная работа'),
                              name: 'priority',
                              initialValue: ppr.priority,
                              decoration: const InputDecoration(border: InputBorder.none),
                              activeColor: AppColor.blueColor,
                              inactiveTrackColor: AppColor.lightBlueColor,
                              onChanged: (value) {
                                ppr = ppr.copyWith(priority: value);
                              },
                            ),
//-------------------------------------------------------------------------------------------------------------------------------
                            FormBuilderTextField(
                              name: 'timer',
                              initialValue: pprType == PprType.workTime
                                  ? 'Интервал: ${ppr.intervalcount} Начиная с: ${ppr.beginint}'
                                  : DateFormat('dd.MM.yyyy').format(ppr.begindate!),
                              readOnly: true,
                              style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                              decoration: AppDecoration.inputCustom('Таймер',
                                  suffixIcon: SvgPicture.asset('assets/timer_white.svg', fit: BoxFit.scaleDown)),
                              onTap: () {
                                showDialog<PprModel>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return pprType == PprType.workTime ? dialog15(context, ppr) : dialog13(context, ppr);
                                    }).then((value) {
                                  if (value != null) {
                                    ppr = value;
                                    pprType == PprType.workTime
                                        ? formKey.currentState?.fields['timer']
                                            ?.didChange('Интервал: ${ppr.intervalcount} Начиная с: ${ppr.beginint}')
                                        : formKey.currentState?.fields['timer']
                                            ?.didChange(DateFormat('dd.MM.yyyy').format(ppr.begindate!));
                                  }
                                });
                              },
                            ),
                            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
                            FormBuilderTextField(
                              name: 'spare_parts',
                              readOnly: true,
                              initialValue: 'Зап. части и расходники',
                              style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                              decoration: AppDecoration.inputCustom('Зап. части и расходники',
                                  prefixIcon: SvgPicture.asset('assets/setting.svg', fit: BoxFit.scaleDown),
                                  suffixIcon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF8B97A8))),
                              onTap: () {
                                showDialog<bool>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return dialogInDeveloping(context);
                                    });
                              },
                            ),
                            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
                            file != null
                                ? Image.file(File(file!.path), height: 200, width: 300, fit: BoxFit.cover)
                                : ppr.image!.isEmpty
                                    ? const SizedBox()
                                    : Image.network(height: 200, width: 300, fit: BoxFit.cover, imageUrl + ppr.image!,
                                        errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                        return SvgPicture.asset('assets/error.svg');
                                      }),
                            const SizedBox(height: 16),
                            SelectImageButton(
                              onTap: () async {
                                FilePickerResult? result = await FilePicker.platform.pickFiles();
                                if (result != null) {
                                  file = File(result.files.single.path!);
                                  ppr = ppr.copyWith(image: file!.path);
                                  refresh.value = !refresh.value;
                                }
                              },
                            ),
                            const SizedBox(height: 16),
//-------------------------------------------------------------------------------------------------------------------------------
                          ],
                        ),
                      ),
                    );
                  }),
            )),
            Container(
              width: double.infinity,
              height: 55,
              color: Colors.white,
              child: AppFilledButton('Сохранить', onPressed: () {
                BlocProvider.of<PprBloc>(context).add(PprEvent.updatePpr(pprType, ppr));
              }),
            ),
            const SizedBox(height: 16),
            ppr.pprtype != 3
                ? TextButton(
                    child: const Text('Удалить').style12w300(),
                    onPressed: () {
                      showDialog<bool>(
                          context: context,
                          builder: (BuildContext context) {
                            return dialogConfirmDelete(context, 'Вы действительно хотите', 'удалить эту работу?');
                          }).then((value) {
                        if (value != null) {
                          if (value) {
                            BlocProvider.of<PprBloc>(context).add(PprEvent.deletePpr(pprType, ppr));
                          }
                        }
                      });
                    })
                : const SizedBox(),
            const SizedBox(height: 16)
          ],
        ),
      )),
    );
  }
}
