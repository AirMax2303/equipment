
import 'package:go_router/go_router.dart';

import '../equipment/equipment_page.dart';
import '../profile/bloc/profile_bloc.dart';
import '../profile/profile_page.dart';

final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'main',
        path: '/',
        builder: (context, state) {
          return ProfilePage(const ProfileEvent.initial('profile'));
//          return EquipmentManagement(equipmentid: '',);
        },
      ),
]
);