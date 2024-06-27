import 'package:flutter/widgets.dart' show BuildContext, Widget;

<<<<<<< Updated upstream
import '../../feature/home/presentation/views/home_view.dart';


abstract final class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    HomeView.route:(_) =>  const HomeView(),
=======

abstract final class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
<<<<<<< Updated upstream
    // HomeView.route:(_) => const HomeView(),
=======
    HomeView.route:(_) =>   HomeView(),
>>>>>>> Stashed changes
>>>>>>> Stashed changes

  };
}
