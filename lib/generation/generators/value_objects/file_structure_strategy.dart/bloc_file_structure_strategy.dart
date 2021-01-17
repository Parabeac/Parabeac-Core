import 'package:parabeac_core/generation/generators/value_objects/file_structure_strategy.dart/pb_file_structure_strategy.dart';
import 'package:parabeac_core/generation/generators/writers/pb_page_writer.dart';
import 'package:parabeac_core/interpret_and_optimize/helpers/pb_intermediate_node_tree.dart';

class BLoCFileStructureStrategy extends FileStructureStrategy {
  BLoCFileStructureStrategy(String genProjectPath, PBPageWriter pageWriter,
      PBIntermediateTree projectIntermediateTree)
      : super(genProjectPath, pageWriter, projectIntermediateTree);
}
