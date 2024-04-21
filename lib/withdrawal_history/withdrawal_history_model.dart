import '/flutter_flow/flutter_flow_util.dart';
import 'withdrawal_history_widget.dart' show WithdrawalHistoryWidget;
import 'package:flutter/material.dart';

class WithdrawalHistoryModel extends FlutterFlowModel<WithdrawalHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
