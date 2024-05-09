import 'package:esperar_users/domain/entities/chairs/chairs.dart';
import 'package:esperar_users/domain/entities/chairs/location_chair.dart';
import 'package:esperar_users/domain/entities/chairs/vehicle_distribution.dart';

VehicleDistribution fillEmptySpaces(VehicleDistribution distribution) {
  List<Chair> filledChairs = [];
  for (int row = 0; row < distribution.maxChairsRow; row++) {
    for (int col = 0; col < distribution.maxChairsRow; col++) {
      bool isChairPresent = false;
      for (Chair chair in distribution.chairs) {
        if (chair.location.rowIndex == row &&
            chair.location.columnIndex == col) {
          isChairPresent = true;
          filledChairs.add(chair);
          break;
        }
      }
      if (!isChairPresent) {
        filledChairs.add(Chair(
          id: -1, // Adjust as needed
          type: "PASILLO",
          status: "VACÍO",
          location: LocationChair(
            rowIndex: row,
            columnIndex: col,
          ),
        ));
      }
    }
  }
  distribution.chairs.clear();
  distribution.chairs.addAll(filledChairs);
  return distribution;
}
