import '/flutter_flow/flutter_flow_util.dart';
import 'tradeall_widget.dart' show TradeallWidget;
import 'package:flutter/material.dart';

class TradeallModel extends FlutterFlowModel<TradeallWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
