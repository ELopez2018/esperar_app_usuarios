// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverUpdate _$DriverUpdateFromJson(Map<String, dynamic> json) => DriverUpdate(
      email: json['email'] as String?,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      secondName: json['secondName'] as String?,
      lastName: json['lastName'] as String?,
      birthday: json['birthdate'] as String?,
      gender: json['gender'] as String?,
      documentNumber: json['documentNumber'] as int?,
      documentType: json['documentType'] as String?,
      phone: json['phone'] as String?,
      licenseExpirationDate: json['licenseExpirationDate'] as String,
      termsAndConditions: json['termsAndConditions'] as bool,
    );

Map<String, dynamic> _$DriverUpdateToJson(DriverUpdate instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'lastName': instance.lastName,
      'birthdate': instance.birthday,
      'gender': instance.gender,
      'documentNumber': instance.documentNumber,
      'documentType': instance.documentType,
      'phone': instance.phone,
      'termsAndConditions': instance.termsAndConditions,
      'licenseExpirationDate': instance.licenseExpirationDate,
    };
