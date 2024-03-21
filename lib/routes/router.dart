import 'package:flutter/material.dart';
import 'package:hobby_code/pages/home.dart';
import 'package:hobby_code/pages/profile_page.dart';
import 'package:hobby_code/utils/route_names.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(
                  key: const Key('HomePage'),
                  title: "HomePage",
                ));
      case RouteNames.profile:
        // Assuming DetailsPage takes some arguments
        return MaterialPageRoute(
            builder: (_) => const ProfilePage(
                  key: Key('ProfilePage'),
                ));
      default:
        // Handling undefined route
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
