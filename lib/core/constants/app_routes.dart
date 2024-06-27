import 'package:flutter/widgets.dart' show BuildContext, Widget;

import '../../feature/home/presentation/views/home_view.dart';


abstract final class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    HomeView.route:(_) =>   HomeView(),
    


  };
}
