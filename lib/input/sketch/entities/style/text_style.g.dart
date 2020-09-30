// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextStyle _$TextStyleFromJson(Map<String, dynamic> json) {
  return TextStyle(
    rawEncodedAttributes: json['encodedAttributes'] as Map<String, dynamic>,
  )
    ..alignment = _$enumDecodeNullable(_$ALIGNMENTEnumMap, json['alignment'])
    ..fontFamily = json['fontFamily'] as String
    ..fontSize = json['fontSize'] as String
    ..fontWeight = json['fontWeight'] as String;
}

Map<String, dynamic> _$TextStyleToJson(TextStyle instance) => <String, dynamic>{
      'encodedAttributes': instance.rawEncodedAttributes,
      'alignment': _$ALIGNMENTEnumMap[instance.alignment],
      'fontFamily': instance.fontFamily,
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ALIGNMENTEnumMap = {
  ALIGNMENT.LEFT: 'LEFT',
  ALIGNMENT.RIGHT: 'RIGHT',
  ALIGNMENT.CENTER: 'CENTER',
  ALIGNMENT.JUSTIFY: 'JUSTIFY',
};
