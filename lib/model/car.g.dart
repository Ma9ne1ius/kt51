// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      brand: json['car'] as String,
      model: json['car_model'] as String,
      color: json['car_color'] as String,
      price: const PriceConverter().fromJson(json['price'] as String),
      availability: json['availability'] as bool,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'car': instance.brand,
      'car_model': instance.model,
      'car_color': instance.color,
      'price': const PriceConverter().toJson(instance.price),
      'availability': instance.availability,
    };
