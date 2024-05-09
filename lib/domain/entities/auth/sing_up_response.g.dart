// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sing_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingUpResponse _$SingUpResponseFromJson(Map<String, dynamic> json) =>
    SingUpResponse(
      id: json['id'] as int,
      name: json['name'] as String?,
      nit: json['nit'] as String?,
      legalRepresentativeId: json['legalRepresentativeId'] as int?,
      address: json['address'] as String?,
      email: json['email'] as String,
      neighborhood: json['neighborhood'] as String?,
      city: json['city'] as String?,
      department: json['department'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      cellPhone: json['cellPhone'] as String?,
      whatsApp: json['whatsApp'] as String?,
      username: json['username'] as String?,
      termsAndConditions: json['termsAndConditions'] as bool?,
    );

Map<String, dynamic> _$SingUpResponseToJson(SingUpResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'termsAndConditions': instance.termsAndConditions,
    };
