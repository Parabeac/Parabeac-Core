import 'package:parabeac_core/generation/generators/attribute-helper/pb_attribute_gen_helper.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/inherited_scaffold.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/inherited_container.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/injected_container.dart';

class PBColorGenHelper extends PBAttributesHelper {
  PBColorGenHelper() : super('color');

  @override
  String generate(PBIntermediateNode source) {
    var statement = '';
    if (source == null) {
      return statement;
    }
    if (source is InheritedScaffold) {
      var scaffold = source as InheritedScaffold;
      if (scaffold.color == null && scaffold.backgroundColor == null) {
        statement = '';
      } else {
        statement = findDefaultColor(scaffold.backgroundColor) != null
            ? 'backgroundColor: ${findDefaultColor(scaffold.backgroundColor)},'
            : 'backgroundColor: Color(${scaffold.backgroundColor}),\n';
      }
    }
    if (source.color == null) {
      statement = '';
    } else {
      if (source is! InheritedContainer) {
        statement = findDefaultColor(source.color) != null
            ? 'color: ${findDefaultColor(source.color)},'
            : 'color: Color(${source.color}),\n';
      } else if ((source as InheritedContainer).isBackgroundVisible) {
        statement = findDefaultColor(source.color) != null
            ? 'color: ${findDefaultColor(source.color)},'
            : 'color: Color(${source.color}),\n';
      } else {
        statement = '';
      }
    }
    return statement;
  }

  String findDefaultColor(String hex) {
    switch (hex) {
      case '0xffffffff':
        return 'Colors.white';
        break;
      case '0xff000000':
        return 'Colors.black';
        break;
    }
    return null;
  }
}
