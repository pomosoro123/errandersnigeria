import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/material.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Text widget.
  AdminRecord? admin;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
