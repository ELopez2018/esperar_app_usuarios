// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payments _$PaymentsFromJson(Map<String, dynamic> json) => Payments(
      reservationId: json['reservationId'] as int,
      cardNumber: json['cardNumber'] as String,
      cardHolder: json['cardHolder'] as String,
      expirationDate: json['expirationDate'] as String,
      cvv: json['cvv'] as String,
    );

Map<String, dynamic> _$PaymentsToJson(Payments instance) => <String, dynamic>{
      'reservationId': instance.reservationId,
      'cardNumber': instance.cardNumber,
      'cardHolder': instance.cardHolder,
      'expirationDate': instance.expirationDate,
      'cvv': instance.cvv,
    };
