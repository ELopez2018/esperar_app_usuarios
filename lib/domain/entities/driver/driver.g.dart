// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Driver _$DriverFromJson(Map<String, dynamic> json) => Driver(
      id: json['id'] as int,
      email: json['email'] as String?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      secondName: json['secondName'] as String?,
      lastName: json['lastName'] as String?,
      birthday: json['birthdate'] as String?,
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      currentCountry: json['currentCountry'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      company: json['currentCompany'] == null
          ? null
          : User.fromJson(json['currentCompany'] as Map<String, dynamic>),
      vehicle: json['currentVehicle'] == null
          ? null
          : Vehicle.fromJson(json['currentVehicle'] as Map<String, dynamic>),
      licenseExpirationDate: json['licenseExpirationDate'] as String?,
      identificationData: json['identificationData'] == null
          ? null
          : IdentificationData.fromJson(
              json['identificationData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'fullName': instance.fullName,
      'image': instance.image,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'lastName': instance.lastName,
      'birthdate': instance.birthday,
      'gender': instance.gender,
      'identificationData': instance.identificationData,
      'phone': instance.phone,
      'currentCountry': instance.currentCountry,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'currentCompany': instance.company,
      'currentVehicle': instance.vehicle,
      'licenseExpirationDate': instance.licenseExpirationDate,
    };
