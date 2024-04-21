import '/flutter_flow/flutter_flow_util.dart';
import 'trade_search_widget.dart' show TradeSearchWidget;
import 'package:flutter/material.dart';

class TradeSearchModel extends FlutterFlowModel<TradeSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
