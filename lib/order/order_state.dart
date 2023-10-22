import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:equipment/widgets/text_extension.dart';
import '../other/other.dart';
import '../widgets/widgets.dart';

class StateEquipment extends StatelessWidget {
  StateEquipment({Key? key, required this.onPressed}) : super(key: key);
  final ItemCallback? onPressed;
  final ValueNotifier<int> stateEquipment = ValueNotifier<int>(0);

  final List<String> stateImage = ['assets/state_0.svg', 'assets/state_1.svg', 'assets/state_2.svg'];
  final List<String> stateImageSelected = ['assets/state_0_sel.svg', 'assets/state_1_sel.svg', 'assets/state_2_sel.svg'];

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
          const SizedBox(height: 16),
          const Text('Состояние оборудования').style14w700(),
//          const SizedBox(height: 10),
          ValueListenableBuilder(
              valueListenable: stateEquipment,
              builder: (BuildContext context, value, Widget? child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 80,
                      onPressed: () {
                        stateEquipment.value = 0;
                        onPressed!(0);
                      },
                      icon: SvgPicture.asset(value == 0 ? stateImageSelected[0] : stateImage[0]),
                    ),
                    IconButton(
                      iconSize: 80,
                      onPressed: () {
                        stateEquipment.value = 1;
                        onPressed!(1);
                      },

                      icon: SvgPicture.asset(value == 1 ? stateImageSelected[1] : stateImage[1]),
                    ),
                    IconButton(
                      iconSize: 80,
                      onPressed: () {
                        stateEquipment.value = 2;
                        onPressed!(2);
                      },
                      icon: SvgPicture.asset(value == 2 ? stateImageSelected[2] : stateImage[2]),
                    ),
                  ],
                );
              }),
//          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
