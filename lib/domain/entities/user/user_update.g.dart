// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserUpdate _$UserUpdateFromJson(Map<String, dynamic> json) => UserUpdate(
      email: json['email'] as String?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      secondName: json['secondName'] as String?,
      lastName: json['lastName'] as String?,
      documentNumber: json['documentNumber'] as int?,
      documentType: json['documentType'] as String?,
      phone: json['phone'] as String?,
      currentCountry: json['currentCountry'] as String?,
      rol: Rol.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateToJson(UserUpdate instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'fullName': instance.fullName,
      'image': instance.image,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'lastName': instance.lastName,
      'documentNumber': instance.documentNumber,
      'documentType': instance.documentType,
      'phone': instance.phone,
      'currentCountry': instance.currentCountry,
      'role': instance.rol,
    };
