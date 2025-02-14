import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_page_widget.dart' show PaymentPageWidget;
import 'package:flutter/material.dart';

class PaymentPageModel extends FlutterFlowModel<PaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DepositsRecord? depref;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
