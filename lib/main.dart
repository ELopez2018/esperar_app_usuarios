import 'package:esperar_users/config/host.dart';
import 'package:esperar_users/core/const/colors.dart';
import 'package:esperar_users/core/routes/routes.dart';
import 'package:esperar_users/data/repositories/auth.dart';
import 'package:esperar_users/data/repositories/country_state_city.dart';
import 'package:esperar_users/data/repositories/driver.dart';
import 'package:esperar_users/data/repositories/journey.dart';
import 'package:esperar_users/data/repositories/local_storage.dart';
import 'package:esperar_users/data/repositories/payment.dart';
import 'package:esperar_users/data/repositories/reservation.dart';
import 'package:esperar_users/data/repositories/routes.dart';
import 'package:esperar_users/data/repositories/user.dart';
import 'package:esperar_users/data/repositories/vehicle.dart';
import 'package:esperar_users/data/services/auth.dart';
import 'package:esperar_users/data/services/country_state_city.dart';
import 'package:esperar_users/data/services/driver.dart';
import 'package:esperar_users/data/services/journeys.dart';
import 'package:esperar_users/data/services/payment.dart';
import 'package:esperar_users/data/services/reservation.dart';
import 'package:esperar_users/data/services/routes.dart';
import 'package:esperar_users/data/services/socket.dart';
import 'package:esperar_users/data/services/user.dart';
import 'package:esperar_users/data/services/vehicle.dart';
import 'package:esperar_users/domain/blocs/pop_ups.dart';
import 'package:esperar_users/domain/repositories/auth.dart';
import 'package:esperar_users/domain/repositories/country_state_city.dart';
import 'package:esperar_users/domain/repositories/driver.dart';
import 'package:esperar_users/domain/repositories/journeys.dart';
import 'package:esperar_users/domain/repositories/local_storage.dart';
import 'package:esperar_users/domain/repositories/paymetns.dart';
import 'package:esperar_users/domain/repositories/reservation.dart';
import 'package:esperar_users/domain/repositories/routes.dart';
import 'package:esperar_users/domain/repositories/user.dart';
import 'package:esperar_users/domain/repositories/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

SocketService socketService = SocketService();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.location.request();

  await socketService.init('$apiHost/ws');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LocalStorageInterface>(
          create: (context) => LocalStorageRepository(),
        ),
        Provider(
          create: (context) => socketService,
        )
      ],
      builder: (context, child) => MultiProvider(
        providers: [
          Provider<AuthInterface>(
            create: (context) => AuthRepository(
              authServiceInterface: AuthService(),
            ),
          ),
          Provider<DriverInterface>(
            create: (context) => DriverRepository(
              driverServiceInterface: DriverService(
                localStorageInterface:
                    Provider.of<LocalStorageInterface>(context, listen: false),
              ),
            ),
          ),
          Provider<RoutesInterface>(
            create: (context) => RoutesRepository(
              routesServiceInterface: RouteService(
                localStorageInterface:
                    Provider.of<LocalStorageInterface>(context, listen: false),
              ),
            ),
          ),
          Provider<UserInterface>(
            create: (context) => UserRepository(
              userServiceInterface: UserService(
                localStorageInterface:
                    Provider.of<LocalStorageInterface>(context, listen: false),
              ),
            ),
          ),
          Provider<VehicleInterface>(
            create: (context) => VehicleRepository(
                vehicleServiceInterface: VehicleService(
              localStorageInterface:
                  Provider.of<LocalStorageInterface>(context, listen: false),
            )),
          ),
          Provider<CountyStateCityInterface>(
            create: (context) => CountyStateCity(
              countryStateCityService: CountryStateCityService(),
            ),
          ),
          Provider<JourneysInterface>(
            create: (context) => JourneyRepository(
              journeysServiceInterface: JourneysService(
                localStorageInterface:
                    Provider.of<LocalStorageInterface>(context, listen: false),
              ),
            ),
          ),
          Provider<ReservationInterface>(
            create: (context) => ReservationRepository(
              reservationServiceInterface: ReservationService(
                localStorageInterface:
                    Provider.of<LocalStorageInterface>(context, listen: false),
              ),
            ),
          ),
                    Provider<PaymentInterface>(
            create: (context) => PaymentRepository(
              paymentServiceInterface: PaymentServices(
                localStorageInterface:
                    Provider.of<LocalStorageInterface>(context, listen: false),
              ),
            ),
          ),
          ChangeNotifierProvider(
            create: (context) => PopUpsProvider(),
          )
        ],
        builder: (context, child) => MaterialApp(
          title: 'Esperar Conductores',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
              useMaterial3: true,
              checkboxTheme: CheckboxThemeData()),
          initialRoute: '',
          routes: routes(context),
        ),
      ),
    );
  }
}
