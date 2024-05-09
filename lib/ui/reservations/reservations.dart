import 'package:esperar_users/core/const/colors.dart';
import 'package:esperar_users/ui/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ReservationsScreen extends StatelessWidget {
  const ReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
            AppBarCustom( action: BackButton(color: primaryColor,), title: Text('Mis reservas')),
          ],
        ),
      ),
    );
  }
}