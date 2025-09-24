import '/flutter_flow/flutter_flow_util.dart';
import 'addtask_widget.dart' show AddtaskWidget;
import 'package:flutter/material.dart';

class AddtaskModel extends FlutterFlowModel<AddtaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tasktitle widget.
  FocusNode? tasktitleFocusNode;
  TextEditingController? tasktitleTextController;
  String? Function(BuildContext, String?)? tasktitleTextControllerValidator;
  // State field(s) for taskdetails widget.
  FocusNode? taskdetailsFocusNode;
  TextEditingController? taskdetailsTextController;
  String? Function(BuildContext, String?)? taskdetailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tasktitleFocusNode?.dispose();
    tasktitleTextController?.dispose();

    taskdetailsFocusNode?.dispose();
    taskdetailsTextController?.dispose();
  }
}
