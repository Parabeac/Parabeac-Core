// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FigmaText _$FigmaTextFromJson(Map<String, dynamic> json) {
  return FigmaText(
    name: json['name'] as String,
    type: json['type'] as String,
    pluginData: json['pluginData'],
    sharedPluginData: json['sharedPluginData'],
    layoutAlign: json['layoutAlign'],
    constraints: json['constraints'],
    boundaryRectangle: json['absoluteBoundingBox'] == null
        ? null
        : Frame.fromJson(json['absoluteBoundingBox'] as Map<String, dynamic>),
    size: json['size'],
    fills: json['fills'],
    strokes: json['strokes'],
    strokeWeight: json['strokeWeight'],
    strokeAlign: json['strokeAlign'],
    styles: json['styles'],
    characters: json['characters'] as String,
    characterStyleOverrides: (json['characterStyleOverrides'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    styleOverrideTable: json['styleOverrideTable'] as Map<String, dynamic>,
  )
    ..UUID = json['id'] as String
    ..isVisible = json['visible'] as bool ?? true
    ..prototypeNodeUUID = json['transitionNodeID'] as String;
}

Map<String, dynamic> _$FigmaTextToJson(FigmaText instance) => <String, dynamic>{
      'id': instance.UUID,
      'name': instance.name,
      'pluginData': instance.pluginData,
      'sharedPluginData': instance.sharedPluginData,
      'visible': instance.isVisible,
      'layoutAlign': instance.layoutAlign,
      'constraints': instance.constraints,
      'transitionNodeID': instance.prototypeNodeUUID,
      'absoluteBoundingBox': instance.boundaryRectangle,
      'size': instance.size,
      'fills': instance.fills,
      'strokes': instance.strokes,
      'strokeWeight': instance.strokeWeight,
      'strokeAlign': instance.strokeAlign,
      'styles': instance.styles,
      'type': instance.type,
      'characters': instance.characters,
      'characterStyleOverrides': instance.characterStyleOverrides,
      'styleOverrideTable': instance.styleOverrideTable,
    };
