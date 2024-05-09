
import 'package:flutter/material.dart';

const primaryColor = Color(0xFFf40d53);

Color getColor(String color) {
  if (color.contains('#')) {
    return Color(int.parse(color.split('#')[1], radix: 16) + 0xFF000000);
  } else {
    return Color(int.parse(color, radix: 16) + 0xFF000000);
  }
}



// final chairs = VehicleDistribution(
//   maxChairsRow: 5,
//   rows: 3,
//   chairs: [
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 0),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 1),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 3),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 4),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 1,
//         columnIndex: 0),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: 1,
//       columnIndex: 1,
//     ),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 1,
//         columnIndex: 3),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: 1,
//       columnIndex: 4,
//     ),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 2,
//         columnIndex: 0),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: 2,
//       columnIndex: 1,
//     ),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 2,
//         columnIndex: 3),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 2,
//         columnIndex: 2),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "OCCUPIED",
//       rowIndex: 2,
//       columnIndex: 4,
//     )
//   ],
// );

// var layoutChairs = VehicleDistribution(
//   maxChairsRow: 4,
//   rows: 3,
//   chairs: [
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 0),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 1),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 2),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 0,
//         columnIndex: 3),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 1,
//         columnIndex: 0),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: 1,
//       columnIndex: 1,
//     ),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: 1,
//       columnIndex: 2,
//     ),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 1,
//         columnIndex: 3),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 2,
//         columnIndex: 0),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: 2,
//       columnIndex: 1,
//     ),
//     Chair(
//       id: 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: 2,
//       columnIndex: 2,
//     ),
//     Chair(
//         id: 1,
//         type: "NORMAL",
//         status: "AVAILABLE",
//         rowIndex: 2,
//         columnIndex: 3),
//   ],
// );

// VehicleDistribution fillEmptySpaces(VehicleDistribution distribution) {
//   List<Chair> filledChairs = [];
//   for (int row = 0; row < distribution.rows; row++) {
//     for (int col = 0; col < distribution.maxChairsRow; col++) {
//       bool isChairPresent = false;
//       for (Chair chair in distribution.chairs) {
//         if (chair.rowIndex == row && chair.columnIndex == col) {
//           isChairPresent = true;
//           filledChairs.add(chair);
//           break;
//         }
//       }
//       if (!isChairPresent) {
//         filledChairs.add(Chair(
//           id: -1, // Adjust as needed
//           type: "PASILLO",
//           status: "VACÍO",
//           rowIndex: row,
//           columnIndex: col,
//         ));
//       }
//     }
//   }
//   distribution.chairs.clear();
//   distribution.chairs.addAll(filledChairs);
//   return distribution;
// }

// void addRowToLayoutChairs() {
//   int maxColumns = layoutChairs.maxChairsRow;
//   int numRows = layoutChairs.rows;

//   List<Chair> newRow = [];
//   for (int i = 0; i < maxColumns; i++) {
//     Chair newChair = Chair(
//       id: numRows * maxColumns + i + 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: numRows,
//       columnIndex: i,
//     );
//     newRow.add(newChair);
//   }
//   layoutChairs.chairs.addAll(newRow);
//   layoutChairs.rows++;
// }

// void removeLastRowFromLayoutChairs() {
//   int maxColumns = layoutChairs.maxChairsRow;
//   int numRows = layoutChairs.rows;
//   int startIndex = (numRows - 1) * maxColumns;
//   layoutChairs.chairs.removeRange(startIndex, startIndex + maxColumns);
//   layoutChairs.rows--;
// }

// void addColumnToLayoutChairs() {
//   int maxColumns = layoutChairs.maxChairsRow;
//   int numRows = layoutChairs.rows;

//   for (int i = 0; i < numRows; i++) {
//     Chair newChair = Chair(
//       id: i * maxColumns + maxColumns + 1,
//       type: "NORMAL",
//       status: "AVAILABLE",
//       rowIndex: i,
//       columnIndex: maxColumns,
//     );
//     layoutChairs.chairs.add(newChair);
//   }

//   layoutChairs.chairs.sort((a, b) {
//     if (a.rowIndex != b.rowIndex) {
//       return a.rowIndex.compareTo(b.rowIndex);
//     } else {
//       return a.columnIndex.compareTo(b.columnIndex);
//     }
//   });

//   layoutChairs.maxChairsRow++;
// }

// void removeLastColumnFromLayoutChairs() {
//   int maxColumns = layoutChairs.maxChairsRow;
//   int numRows = layoutChairs.rows;

//   // Crear una copia de la lista de sillas
//   List<Chair> chairsCopy = List.from(layoutChairs.chairs);

//   // Remover el último elemento de cada fila en la copia
//   for (int i = 0; i < chairsCopy.length; i++) {
//     if (chairsCopy[i].columnIndex == layoutChairs.maxChairsRow - 1) {
//       chairsCopy.removeAt(i);
//     }
//   }

//   // Actualizar el número de columnas en la distribución
//   layoutChairs.maxChairsRow--;

//   // Reasignar la lista de sillas con la copia modificada
//   layoutChairs.chairs = List.from(chairsCopy);

//   // Reordenar las sillas después de la eliminación de la columna
//   layoutChairs.chairs.sort((a, b) {
//     if (a.rowIndex != b.rowIndex) {
//       return a.rowIndex.compareTo(b.rowIndex);
//     } else {
//       return a.columnIndex.compareTo(b.columnIndex);
//     }
//   });
// }
