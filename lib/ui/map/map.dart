import 'package:esperar_users/core/const/colors.dart';
import 'package:esperar_users/core/const/navigate.dart';
import 'package:esperar_users/domain/blocs/layout.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layoutBloc = Provider.of<LayoutProvider>(context);
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned.fill(
                child: Consumer<LayoutProvider>(
                  builder: (context, value, child) {
                    final currentPosition = value.currentPosition;
                    if (currentPosition != null) {
                      return GoogleMap(
                        initialCameraPosition: CameraPosition(
                            target: LatLng(currentPosition.latitude,
                                currentPosition.longitude),
                            zoom: 15.7),
                        myLocationEnabled: true,
                        myLocationButtonEnabled: false,
                        polylines: layoutBloc.polylines,
                        onMapCreated: (controller) {
                          layoutBloc.setMapController(
                              controller); // Inicializar el mapa y establecer el controlador
                        },
                      );
                    } else {
                      return GoogleMap(
                        initialCameraPosition: const CameraPosition(
                            target: LatLng(4.146347, -73.641619), zoom: 13.7),
                        zoomControlsEnabled: false,
                        myLocationButtonEnabled: false,
                        polylines: layoutBloc.polylines,
                      );
                    }
                  },
                ),
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  height: 50,
                  child: GestureDetector(
                    onTap: () async {
                      push(context, "search-travel", null);
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Icon(
                                    Icons.bus_alert_outlined,
                                    color: primaryColor,
                                  ),
                                ),
                                Text("Viajar..."),
                              ],
                            ),
                            Icon(
                              Icons.search,
                              color: primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
