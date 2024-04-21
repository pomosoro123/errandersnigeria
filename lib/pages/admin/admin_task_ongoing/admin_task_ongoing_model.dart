import '/flutter_flow/flutter_flow_util.dart';
import 'admin_task_ongoing_widget.dart' show AdminTaskOngoingWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AdminTaskOngoingModel extends FlutterFlowModel<AdminTaskOngoingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController.dispose();
  }
}
