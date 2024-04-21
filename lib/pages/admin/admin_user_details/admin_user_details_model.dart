import '/flutter_flow/flutter_flow_util.dart';
import 'admin_user_details_widget.dart' show AdminUserDetailsWidget;
import 'package:flutter/material.dart';

class AdminUserDetailsModel extends FlutterFlowModel<AdminUserDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
