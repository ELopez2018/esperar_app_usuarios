// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sing_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingUpRequest _$SingUpRequestFromJson(Map<String, dynamic> json) =>
    SingUpRequest(
      name: json['name'] as String,
      nit: json['nit'] as String,
      legalRepresentativeId: json['legalRepresentativeId'] as int,
      address: json['address'] as String,
      email: json['email'] as String,
      neighborhood: json['neighborhood'] as String,
      city: json['city'] as String,
      department: json['department'] as String,
      country: json['country'] as String,
      phone: json['phone'] as String,
      cellPhone: json['cellPhone'] as String,
      whatsApp: json['whatsApp'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      termsAndConditions: json['termsAndConditions'] as bool,
    );

Map<String, dynamic> _$SingUpRequestToJson(SingUpRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nit': instance.nit,
      'legalRepresentativeId': instance.legalRepresentativeId,
      'address': instance.address,
      'email': instance.email,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'department': instance.department,
      'country': instance.country,
      'phone': instance.phone,
      'cellPhone': instance.cellPhone,
      'whatsApp': instance.whatsApp,
      'username': instance.username,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'termsAndConditions': instance.termsAndConditions,
    };
