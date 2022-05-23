import 'package:flutter/material.dart';
import 'package:iat_movel/ui/home/ui.dart';
import 'package:iat_movel/widgets/widget.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return Home.route();
      // ignore: no_duplicate_case_values
      case Home.routeName:
        return Home.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title:
              const AppText(fontSize: 16, text: 'Error', color: Colors.white),
        ),
      ),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
