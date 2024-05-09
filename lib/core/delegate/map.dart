import 'package:esperar_users/core/const/colors.dart';
import 'package:flutter/material.dart';

class MapDelegate extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      GestureDetector(
        onTap: () => query = '',
        child: const Icon(
          Icons.close,
          color: primaryColor,
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return BackButton(
      color: primaryColor,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("1");
    
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("data");
  }

  
}
