import '/flutter_flow/flutter_flow_util.dart';
import 'admin_donation_widget.dart' show AdminDonationWidget;
import 'package:flutter/material.dart';

class AdminDonationModel extends FlutterFlowModel<AdminDonationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
