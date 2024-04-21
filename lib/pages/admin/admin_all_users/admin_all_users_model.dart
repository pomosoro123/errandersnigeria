import '/flutter_flow/flutter_flow_util.dart';
import 'admin_all_users_widget.dart' show AdminAllUsersWidget;
import 'package:flutter/material.dart';

class AdminAllUsersModel extends FlutterFlowModel<AdminAllUsersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
