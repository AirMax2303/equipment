import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../other/other.dart';
import '../widgets/widgets.dart';

class StateEquipment extends StatelessWidget {
  StateEquipment({Key? key, required this.onPressed}) : super(key: key);
  ItemCallback? onPressed;
  final ValueNotifier<int> stateEquipment = ValueNotifier<int>(0);

  List<String> stateImage = ['assets/state_0.svg', 'assets/state_1.svg', 'assets/state_2.svg'];
  List<String> stateImageSelected = ['assets/state_0_sel.svg', 'assets/state_1_sel.svg', 'assets/state_2_sel.svg'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          AppSixeBox.size16,
          const Text('Состояние оборудования').style14w700(),
          AppSixeBox.size10,
          ValueListenableBuilder(
              valueListenable: stateEquipment,
              builder: (BuildContext context, value, Widget? child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        stateEquipment.value = 0;
                        onPressed!(0);
                      },
                      icon: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: SvgPicture.asset(
                          value == 0 ? stateImageSelected[0] : stateImage[0],
                          height: 100,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        stateEquipment.value = 1;
                        onPressed!(1);
                      },
                      icon: SvgPicture.asset(value == 1 ? stateImageSelected[1] : stateImage[1]),
                    ),
                    IconButton(
                      onPressed: () {
                        stateEquipment.value = 2;
                        onPressed!(2);
                      },
                      icon: SvgPicture.asset(value == 2 ? stateImageSelected[2] : stateImage[2]),
                    ),
                  ],
                );
              }),
          AppSixeBox.size10,
        ],
      ),
    );
  }
}
