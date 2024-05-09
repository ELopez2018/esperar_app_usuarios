import 'package:esperar_users/core/const/colors.dart';
import 'package:esperar_users/core/const/generate_plate.dart';
import 'package:esperar_users/core/const/navigate.dart';
import 'package:esperar_users/domain/blocs/search_travel.dart';
import 'package:esperar_users/domain/repositories/journeys.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchTravel extends StatefulWidget {
  const SearchTravel._();

  static Widget init(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchTravelProvider(
        journeysInterface:
            Provider.of<JourneysInterface>(context, listen: false),
      )..init(),
      builder: (context, child) => const SearchTravel._(),
    );
  }

  @override
  State<SearchTravel> createState() => _SearchTravelState();
}

class _SearchTravelState extends State<SearchTravel> {
  @override
  void initState() {
    Provider.of<SearchTravelProvider>(context, listen: false).init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<SearchTravelProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 70,
                            decoration: const BoxDecoration(
                              color: primaryColor,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Destino",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: "A donde deseas viajar hoy...",
                                border: InputBorder.none,
                              ),
                              controller: bloc.queryTo,
                              onChanged: (value) => bloc.searchDestination(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              bloc.queryTo.text = '';
                              bloc.cleanQuery();
                            },
                            child: const Icon(
                              Icons.close,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 70,
                            decoration: const BoxDecoration(
                              color: primaryColor,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Inicio",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: "A donde deseas viajar hoy...",
                                border: InputBorder.none,
                              ),
                              controller: bloc.queryFrom,
                              onChanged: (value) =>
                                  bloc.searchDestinationByTo(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              bloc.queryFrom.text = '';
                              bloc.cleanQuery();
                            },
                            child: const Icon(
                              Icons.close,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Divider(color: primaryColor),
              const SizedBox(height: 10),
              Expanded(
                child: bloc.results != null
                    ? bloc.results!.isNotEmpty
                        ? ListView.builder(
                            itemBuilder: (context, index) {
                              final route = bloc.results![index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Container(
                                  width: double.infinity,
                                  height: 140,
                                  decoration: BoxDecoration(
                                      color: primaryColor.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: primaryColor,
                                        height: 55,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              PlateVehicle(
                                                  background: Colors.white),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Macarena",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        "\$40.000",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                       Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            route.route.from!,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_rounded,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            route.route.to!,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      Divider(),
                                       Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(""),
                                            Row(
                                              children: [
                                                Text("Sillas"),
                                                SizedBox(width: 10),
                                                Column(
                                                  children: [
                                                    Text("Cap. ${route.vehicle.distribution.chairs.length}"),
                                                    Text("Disp. 50")
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                push(context, 'booking', route);
                                              },
                                              child: Text(
                                                "Reservar silla",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: bloc.results!.length,
                          )
                        : const Center(child: Text('Sin resultados'))
                    : const Center(
                        child: CircularProgressIndicator(
                          color: primaryColor,
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
