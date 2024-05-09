import 'package:esperar_users/ui/screens.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> routes(BuildContext context) => {
 '': (context) => SplashScreen.init(context),
      'welcome': (context) => WelcomeScreen.init(context),
      'login': (context) => LoginScreen.init(context),
      'layout': (context) => LayoutScreen.init(context),
      'search-travel': (context) => SearchTravel.init(context),
      'booking' : (context) => BookingsScreen.init(context),
      'reservations':(context) => ReservationsScreen(),
    };
