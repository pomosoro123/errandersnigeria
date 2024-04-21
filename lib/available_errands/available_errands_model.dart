import '/flutter_flow/flutter_flow_util.dart';
import 'available_errands_widget.dart' show AvailableErrandsWidget;
import 'package:flutter/material.dart';

class AvailableErrandsModel extends FlutterFlowModel<AvailableErrandsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
