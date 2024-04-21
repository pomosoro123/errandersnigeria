import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_u_widget.dart' show ChatUWidget;
import 'package:flutter/material.dart';

class ChatUModel extends FlutterFlowModel<ChatUWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  ChatMessageRecord? ouyy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
