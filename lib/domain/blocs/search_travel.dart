import 'package:esperar_users/domain/entities/journeys/journey.dart';
import 'package:esperar_users/domain/entities/journeys/journeys_response.dart';
import 'package:esperar_users/domain/repositories/journeys.dart';
import 'package:flutter/material.dart';

class SearchTravelProvider extends ChangeNotifier {
  SearchTravelProvider({
    required this.journeysInterface,
  });

  final JourneysInterface journeysInterface;

  TextEditingController queryFrom = TextEditingController();
  TextEditingController queryTo = TextEditingController();

  JourneysResponse? PageableJurneyFrom;
  JourneysResponse? PageableJurneyTo;
  List<Journey>? results;
  List<Journey>? resultsFrom;
  List<Journey>? resultsTo;

  Future init() async {
    try {
      final response =
          await journeysInterface.findAllJourneys(queryFrom.text, queryTo.text);
      if (response != null) {
        PageableJurneyFrom = response;
        results = response.content.isNotEmpty ? response.content : [];
        resultsFrom = results;
      } else {
        results = [];
      }
      notifyListeners();
    } on String catch (_) {
      print(_);
    }
  }

  void searchDestination() async {
    try {
      final response =
          await journeysInterface.findAllJourneys(queryFrom.text, queryTo.text);
      if (response != null) {
        PageableJurneyTo = response;
        results = response.content.isNotEmpty ? response.content : [];
        resultsTo = results;
      } else {
        results = [];
      }
      notifyListeners();
    } on String catch (_) {
      print(_);
    }
    notifyListeners();
  }

  void searchDestinationByTo() async {
    try {
      final response =
          await journeysInterface.findAllJourneys(queryFrom.text, queryTo.text);
      if (response != null) {
        PageableJurneyFrom = response;
        results = response.content.isNotEmpty ? response.content : [];
        resultsFrom = results;
      } else {
        results = [];
      }
      notifyListeners();
    } on String catch (_) {
      print(_);
    }
    notifyListeners();
  }

  void cleanQuery() {
    if (queryTo.text.isEmpty){
      results = resultsTo;
      notifyListeners();
    }
  }
}
