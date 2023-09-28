import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';

import '../other/other.dart';
import '../widgets/widgets.dart';
import 'models/name.dart';
//ignore: must_be_immutable
class NameList extends StatelessWidget {
  NameList({Key? key, required this.list, required this.oniItemPressed, this.onAddTap}) : super(key: key);
  List<NameModel> list;
  ItemCallback oniItemPressed;
  GestureTapCallback? onAddTap;

  Widget item(int index) {
    return InkWell(
      onTap: () {
        oniItemPressed(index);
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: AppColor.backgroundColor,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  list[index].name!,
                  style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 1,
            height: 0,
          ),
        ],
      ),
    );
  }

  Widget buttonAdd() {
    return InkWell(
      onTap: onAddTap,
      child: SizedBox(
        width: double.infinity,
        height: 82,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.lightBlueColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Добавить новое название',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: AppColor.blueColor, fontSize: 14, fontWeight: FontWeight.w700),
                    )),
                Container(
                  width: 50,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColor.blueColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: List.generate(
              list.length,
                  (index) => item(index),
            ) +
                [buttonAdd()],
          ),
        ),
        AppSixeBox.size16,
      ],
    );
  }
}

Dialog newName(BuildContext context, String title) {
  final formKey = GlobalKey<FormBuilderState>();
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: FormBuilder(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              AppSixeBox.size16,
              FormBuilderTextField(
                  name: 'name',
                  style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                  decoration: AppDecoration.inputEq('Введите название'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: 'Обязательно для заполнения'),
                  ])),
              AppSixeBox.size16,
              AppButton.filledBlackButton('Добавить', onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {
                  Navigator.pop(context, formKey.currentState?.fields['name']?.value);
                }
              }),
              TextButton(
                child: Text(
                  'Отменить',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    ),
  );
}
