import '/flutter_flow/flutter_flow_util.dart';
import 'admin_settings_widget.dart' show AdminSettingsWidget;
import 'package:flutter/material.dart';

class AdminSettingsModel extends FlutterFlowModel<AdminSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for bankaccountname widget.
  FocusNode? bankaccountnameFocusNode;
  TextEditingController? bankaccountnameTextController;
  String? Function(BuildContext, String?)?
      bankaccountnameTextControllerValidator;
  // State field(s) for bankaccountno widget.
  FocusNode? bankaccountnoFocusNode;
  TextEditingController? bankaccountnoTextController;
  String? Function(BuildContext, String?)? bankaccountnoTextControllerValidator;
  // State field(s) for banktype widget.
  FocusNode? banktypeFocusNode;
  TextEditingController? banktypeTextController;
  String? Function(BuildContext, String?)? banktypeTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for sublink widget.
  FocusNode? sublinkFocusNode1;
  TextEditingController? sublinkTextController1;
  String? Function(BuildContext, String?)? sublinkTextController1Validator;
  // State field(s) for sublink widget.
  FocusNode? sublinkFocusNode2;
  TextEditingController? sublinkTextController2;
  String? Function(BuildContext, String?)? sublinkTextController2Validator;
  // State field(s) for sublink widget.
  FocusNode? sublinkFocusNode3;
  TextEditingController? sublinkTextController3;
  String? Function(BuildContext, String?)? sublinkTextController3Validator;
  // State field(s) for sublink widget.
  FocusNode? sublinkFocusNode4;
  TextEditingController? sublinkTextController4;
  String? Function(BuildContext, String?)? sublinkTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bankaccountnameFocusNode?.dispose();
    bankaccountnameTextController?.dispose();

    bankaccountnoFocusNode?.dispose();
    bankaccountnoTextController?.dispose();

    banktypeFocusNode?.dispose();
    banktypeTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    sublinkFocusNode1?.dispose();
    sublinkTextController1?.dispose();

    sublinkFocusNode2?.dispose();
    sublinkTextController2?.dispose();

    sublinkFocusNode3?.dispose();
    sublinkTextController3?.dispose();

    sublinkFocusNode4?.dispose();
    sublinkTextController4?.dispose();
  }
}
