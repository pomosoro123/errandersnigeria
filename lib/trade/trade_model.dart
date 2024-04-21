import '/flutter_flow/flutter_flow_util.dart';
import 'trade_widget.dart' show TradeWidget;
import 'package:flutter/material.dart';

class TradeModel extends FlutterFlowModel<TradeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
