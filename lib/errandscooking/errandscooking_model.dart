import '/flutter_flow/flutter_flow_util.dart';
import 'errandscooking_widget.dart' show ErrandscookingWidget;
import 'package:flutter/material.dart';

class ErrandscookingModel extends FlutterFlowModel<ErrandscookingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
