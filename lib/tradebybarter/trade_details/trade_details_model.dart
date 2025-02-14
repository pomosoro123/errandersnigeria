import '/flutter_flow/flutter_flow_util.dart';
import 'trade_details_widget.dart' show TradeDetailsWidget;
import 'package:flutter/material.dart';

class TradeDetailsModel extends FlutterFlowModel<TradeDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
