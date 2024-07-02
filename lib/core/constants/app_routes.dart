import 'package:ecommerceapp/feature/add_product/presntation/views/add_product_view.dart';
import 'package:ecommerceapp/feature/product_detials/presentation/views/product_details_view.dart';
import 'package:ecommerceapp/feature/settings/presentaion/views/setting_view.dart';
import 'package:flutter/widgets.dart' show BuildContext, Widget;

import '../../feature/home/presentation/views/home_view.dart';


abstract final class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    HomeView.route:(_) =>   const HomeView(),
    ProductDetailsView.rout:(_)=> const ProductDetailsView(),
    AddProductView.rout:(_)=>const AddProductView(),
    SettingsView.rout:(_)=> const SettingsView(),


  };
}
