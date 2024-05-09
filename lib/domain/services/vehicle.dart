import 'package:esperar_users/domain/entities/dropdown.dart';
import 'package:esperar_users/domain/entities/vehicle/vehicle.dart';
import 'package:esperar_users/domain/entities/vehicle/vehicle_request.dart';
import 'package:esperar_users/domain/entities/vehicle/vehicle_update.dart';
import 'package:esperar_users/domain/entities/vehicle/vehicles_response.dart';

abstract class VehicleServiceInterface {
  Future<Vehicle?> createVehicle(VehicleRequest vehicle);
  Future<Vehicle?> updateVehicle(VehicleUpdate vehicle, int vehicleId);
  Future<bool?> assignDriverToVehicle(int vehicleId, int driverId);
  Future<VehiclesResponse?> getVehicles(int company);
  Future<VehiclesResponse?> getVehiclesByRoute(int route);
  Future<List<Dropdown>?> getStatus();
}
