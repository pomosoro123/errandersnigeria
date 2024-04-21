import '/flutter_flow/flutter_flow_util.dart';
import 'splashscreen_widget.dart' show SplashscreenWidget;
import 'package:flutter/material.dart';

class SplashscreenModel extends FlutterFlowModel<SplashscreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
