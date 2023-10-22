import 'package:go_router/go_router.dart';

import '../profile/bloc/profile_bloc.dart';
import '../profile/profile_page.dart';

final router = GoRouter(initialLocation: '/profile', routes: [
  GoRoute(
      name: 'profile',
      path: '/profile',
      builder: (context, state) {
        return ProfilePage(const ProfileEvent.initial('profile'));
      }),
]);
