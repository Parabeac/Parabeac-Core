import 'package:json_annotation/json_annotation.dart';
import 'package:parabeac_core/design_logic/design_node.dart';

part 'design_element.g.dart';

@JsonSerializable(nullable: false)
class DesignElement extends DesignNode {
  var designNode;
  DesignElement(this.designNode) : super('', '', false, null, '');
  factory DesignElement.fromJson(Map<String, dynamic> json) =>
      _$DesignElementFromJson(json);
  Map<String, dynamic> toJson() => _$DesignElementToJson(this);
}