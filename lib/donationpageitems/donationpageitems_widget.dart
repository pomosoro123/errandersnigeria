import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'donationpageitems_model.dart';
export 'donationpageitems_model.dart';

class DonationpageitemsWidget extends StatefulWidget {
  const DonationpageitemsWidget({
    super.key,
    required this.cat,
    this.adminref,
  });

  final String? cat;
  final DocumentReference? adminref;

  @override
  State<DonationpageitemsWidget> createState() =>
      _DonationpageitemsWidgetState();
}

class _DonationpageitemsWidgetState extends State<DonationpageitemsWidget>
    with TickerProviderStateMixin {
  late DonationpageitemsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonationpageitemsModel());

    _model.textController1 ??=
        TextEditingController(text: currentUserDisplayName);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<AdminRecord>(
      stream: AdminRecord.getDocument(widget.adminref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final donationpageitemsAdminRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Care for the Needy',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Help those in need with your donation',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Category: ${widget.cat}',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => TextFormField(
                                controller: _model.textController1,
                                focusNode: _model.textFieldFocusNode1,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Channel Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                            ),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Enter email address',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController3,
                              focusNode: _model.textFieldFocusNode3,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Enter phone number',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController4,
                              focusNode: _model.textFieldFocusNode4,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText:
                                    'Short description of what you want to donate',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: 16,
                              minLines: 6,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.textController4Validator
                                  .asValidator(context),
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 500.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls = (await Future.wait(
                                    selectedMedia.map(
                                      (m) async => await uploadData(
                                          m.storagePath, m.bytes),
                                    ),
                                  ))
                                      .where((u) => u != null)
                                      .map((u) => u!)
                                      .toList();
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl = downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                _model.uploadedFileUrl != ''
                                    ? _model.uploadedFileUrl
                                    : 'data:image/png;base64,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AADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMBMAAAD//+zYgQAAAACAIH/rQS6MxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAICZAAAA///s2IEAAAAAgCB/60EujMQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADATAAAA///s2IEAAAAAgCB/60EujMQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAA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AQDmmGKYRrdx48a0LHuGAQBqQzEMAAWUOLVa7ZklVknM9pn1eJHepfz8888xNTWVktXS0hLr169PyYJMq1atisWLF6dkjY+Px+nTp1OyAAC4tH+WHgAAmJnZ7hiuxwvbSsxb6/fh448/TstasGBBrFmzJi0PMv31119pWa+//no89dRTaXkAAPw/xTAAFGDHcHWNsmP4k08+Scs6f/58fPXVV2l5UK927typGAYAmGP/+Nd8+i4mABR05MiRmJqaisOHD8f3338fx44dizNnzsS5c+eiUqnE77//XnpEAGhobW1t0dbWFosWLYq2tra47rrrorOzM5YtWxY33nhjLF++vPSIADBvKIYB4G+cPXs2Jicn//fz7bffxp9//ll6LACgiltuuSV6enqip6cnVq1aFddcc03pkQCgLimGAeA/KpVK7NmzJ9555504cOBA6XEAgAS33nprbNmyJTZs2BDt7e2lxwGAuqEYBqDpHTp0KF566aXYvXt36VEAgDnU19cXjz32WKxbt670KABQnGIYgKZ16NCh2L59e0xMTJQeBQCooZUrV8aOHTvitttuKz0KABSjGAag6fzwww+xbdu2+OKLL0qPAgAU1NPTEy+++GKsWLGi9CgAUHMLSg8AALVSqVTi8ccfj+XLlyuFAYCYnJyMm2++OYaGhuL06dOlxwGAmnJiGICm8O6778aTTz4ZJ0+eLD0KAFCHrr766njuuediaGio9CgAUBOKYQAa3ubNm2NkZKT0GADAPNDf3x/Dw8PR2tpaehQAmFOKYQAa1i+//BJ33313fPfdd6VHAQDmkRtuuCE+/fTT6OjoKD0KAMwZO4YBaEj79++Pzs5OpTAAMGM//vhjdHV1xWeffVZ6FACYM04MA9BwxsbGYmBgoPQYAEADGB0djf7+/tJjAEA6J4YBaChvvfWWUhgASDMwMBCvvvpq6TEAIJ1iGICG8cILL8Tg4GDpMQCABjM0NBTPP/986TEAIJVVEgA0hN27d8emTZtKjwEANLDXXnstHnroodJjAEAKxTAA8974+HjccccdpccAAJrA3r1745577ik9BgBcsX8DAAD//+zdz4uNfx/H8bebhYYjGtPJYKMYkh8LUzILk4ZorCQlNlbCysJuFCnZyIpkzPgVZSFJSaEZCmFBfv9KJMzIkEYo4v4HfLv73j7XOdeZ6/HYTj0/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ABdiGAYAAJhF4uPjNXfuXJ07d85ox5o1a3To0CENDw+rrKxMa9asMdrjadLT01VVVSWn06l9+/YpMjLSaM/x48cVGhqqhIQEox0AAABwHYZhAACAWSI9PV3ff/+9hoeHjTXk5eXpxx9/VEdHhwoKCuTj42OsZTYICAjQzp07df78eTU2NmrDhg3GWn766Sf19PQoKyvLWAMAAABch2EYAADAwy1cuFA2m01ffvmlkfP9/PxUXFyswcFBVVZWKi4uzkjHbJeenq66ujrZ7Xbl5eUZaRgfH1dtba2eeeYZ+fv7G2kAAACAazAMAwAAeLCVK1fq3nvvNfLWEYsXL1ZpaakuXbqk/fv3KyQkxPIGbxQVFaXKykoNDg6qqKjIyFPZFRUVWrdunWJjYy0/GwAAAK4x13QAAAAz6b777mOswqy1ZMkSffXVV5a/dURERIReeeUVPf/885aeixuFhITovffe0549e3TgwAEdOHBATqfTsvM///xzPfjgg8rOztbg4KBl57qbwMBA0wk3WLBggdatW2c6wxJ33HGH6QQAADzanKmpqSnTEQAA/FVubq6qqqpu+z4ffPCBXnjhBRcUAe7ls88+09atWy09MyYmRrt379a2bdssPRe3ZnJyUh999JHeeecdXblyxbJzw8LC1NDQwNPDmFUaGxuVkZFx2/cJCwvTwMCAC4oAAHA93koCAADAw5SWllo6Ct999916//331d3dzSjsxubNm6eioiL19vZq586dlp178eJFJSYm6syZM5adCQAAgNvHMAwAAOBB8vPz9frrr1t23rPPPqve3l7t2LHDsjNxe+bPn699+/bJbrcrJSXFkjPHxsaUlpamI0eOWHIeAAAAbh/DMAAAgAcYGxtTenq6ZcNbTEyMvvnmG5WXl2vRokWWnAnXioqKUktLi6qrqy37G+bn5+uNN96w5CwAAADcHoZhAAAAN+d0OmWz2dTU1GTJebt371Z3d7ceeughS87DzMrOztb58+f19NNPW3LeW2+9pfz8fEvOAgAAwL/3fwAAAP//7N1bVJT1/sfxz8W+QExU0jRRsCZMIx2UDqJ5QOmkLjWF1LCDpJXZ6EJKzcxKLDPKCBU1D2UipmVGB1sCIlEqUCyRQVQgCQxHI895uPxf7LX973btncz8HmaE92stLmSt5/37euHNt6ffw2IYAADAh/3666+KjIxUaWmp5WeFhYWppKRECxYssPwsNK7AwEBlZGQoMzNT7du3t/y8jz76qNEW0QAAAHAPi2EAAAAfdezYMfXv31+VlZWWn/XSSy+prKxMdrvd8rPgPSNHjtShQ4cUExNj+Vkff/yxRo8ebfk5AAAAcA+LYQAAAB9UXV2tyMhIVVVVWXpOaGioioqKtHDhQkvPge8IDAzUJ598ovT0dLVp08bSszIzM3XfffdZegYAAADcw2IYAADAx1RUVKh///6qra219ByHw6HS0lLdeeedlp4D3xQXFyen06moqChLz8nOzlZ0dLQuX75s6TkAAABoGBbDAAAAPqSyslIDBw6Uy+Wy7Ix27dopKytLqamp8vPzs+wc+L7OnTsrNzdXycnJlp6zc+dOjRgxguUwAACAD2ExDAAA4COqqqo0cOBAnThxwrIz7rrrLjmdTt17772WnYFrz/PPP6/CwkJ17NjRsjN27typ4cOHsxwGAADwESyGAQAAfEBVVZUGDBig48ePW3aGw+GwfPmHa9ddd92l0tJS9evXz7IzcnNzNXz4cMv6AAAAuHoshgEAALyspqZG99xzj2VLYX9/f23evFmpqamW9NF0tG/fXrt371ZiYqJlZ7AcBgAA8A0shgEAALzowoULevDBBy27PqJdu3bKz8/Xww8/bEkfTdPbb7+ttWvXWtbfvn27pkyZYlkfAAAAf4/FMAAAgBc99NBDOnjwoCXtbt26qbi4WBEREZb00bTFx8crOztb/v7+lvTXrFmjpUuXWtIGAADA3/uHtwcAAABormbMmKHs7GxL2vfcc4+++uortW7d2pK+rzt16pRqampUU1Oj2tpa1dbWqqamRvX19X/77A033KCQkBAFBwfLZrMpKChIwcHBatu2bSNM7luio6O1e/duPfjgg5ZcdTJ9+nR169ZN999/v/E2AAAA/jcWwwAAAF6wcuVKy+78jYmJ0SeffGJJ29dUVVVp//79cjqdKi4u1pEjR1RTU6MLFy4YP6tVq1YKCQmRzWbTHXfcoZ49e8put6tr167Gz/Il4eHh+uGHHzRkyBBVVlYa78fGxqqgoEC33Xab8TYAAAD+OxbDAAAAjSw3N1dTp061pP3II49o48aNlrS9zel0qqCgQCUlJSotLVVxcbEuXbrUaOefP39eZWVlKisrU2Zm5pXfBwQEKDw8XOHh4erdu7cGDBggm83WaHM1hs6dOys/P19RUVE6dOiQ0fb58+c1YsQI7du3r9m+4Q4AAOANLIYBAAAa0dGjRxUbG2tJ+7HHHtP69estaXvL3r17tW3bNm3btk1VVVXeHucvnTt3Tvn5+crPz7/yu9tvv11jxozRmDFjZLfbvTidOR07dtR3332nwYMH68CBA0bb1dXViomJsexqFQAAAPwZH58DAABoRMOGDdOpU6eMd6dMmdJklsK5ubmaNm2agoKC1K9fPyUnJ/vsUvi/KSsr04IFCxQeHi6bzaZZs2apqKjI22N5rF27dvruu+8UFhZmvJ2Tk6M5c+YY7wIAAOCvsRgGAABoJOPHj1dZWZnxbnx8vN5//33j3cZUXl6uadOmKTAwUEOHDlVaWpqOHTvm7bGMOHLkiJKTk3X33XerS5cumjdvno4ePertsdzWtm1b5efnq1evXsbbixcv1meffWa8CwAAgD9jMQwAANAI3n33XW3evNl4Ny4uTmvXrjXebSwfffSR+vbtq7CwMKWlpen06dPeHslSv/zyi15//XUFBwfrgQce+MNdxdeSwMBA7dq1Sz169DDefvTRR43fYwwAAIA/YzEMAABgsX379mnmzJnGu3FxcUpPTzfetdqFCxeUnJysTp066fHHH1dhYaG3R/KKHTt2aPTo0br11lv14YcfenucBgsMDNS3336r0NBQo92LFy9q9OjRunz5stEuAAAA/ojFMAAAgIV+//13jR071nh3/Pjx19xS+OzZs5o/f76CgoI0a9YsuVwub4/kEyoqKjRp0iR17txZy5Yt8/Y4DdK+fXt9++236tq1q9Hu4cOHlZiYaLQJAACAP2IxDAAAYKHnnntO1dXVRpsDBw7Upk2bjDatdOrUKc2dO1fBwcFKSkrS2bNnvT2ST6qrq5PD4VCnTp2UkpJyzbwxe+ONNyorK0tt27Y12k1LS1NWVpbRJgAAAP4fi2EAAACLbN26VevXrzfa7N69u7788kujTatcvHhR8+bNU1BQkBYtWqRz5855e6RrgsvlUkJCgkJCQrRy5Upvj3NVQkND9fXXXxvvTpw4UfX19ca7AAAAkP7h7QEAAACaoqNHj2rSpElGmx06dFBOTo4CAgKMdq2wfv16zZ07V8eOHfPK+S1btlRYWJh69uypkJAQ+fn5qUWLFld+/vVnPz8/Xb58WZcuXbry8+9/rq6ultPpVHl5uS5dutSof4dff/1VU6dOVVpamlJTUzV48OBGPb+hIiMj9emnnyomJsZYs76+XhMnTtSOHTuMNQEAAPBPLIYBAAAsEB8fr/Pnzxvr+fv7a8eOHQoKCjLWtMKhQ4f0+OOPq6ioqNHOtNlsioiIUM+ePWW32xUWFqabb77Z+DmVlZUqLy9XSUmJnE6nCgoKVFdXZ/yc/+R0OhUVFaVx48Zp+fLluv766y0/011jx47VokWL9OKLLxprZmVlad26dYqPjzfWBAAAAIthAAAA4zZu3KicnByjzQ0bNshutxttmvbWW2/plVdesfxu3ODgYEVFRWnw4MEaMmSIgoODLT3vX0JDQxUaGqpRo0Zd+d1PP/2kXbt2Xfmx8oN6mzdvVm5urtasWaORI0dado6n5syZoz179hi98iQxMVGjRo3y6aU4AADAtYbFMAAAgEFnz57VjBkzjDYdDofGjBljtGlSZWWlHn30URUWFlp2xgMPPKCxY8cqKipKNpvNsnMaymazyWazafLkyZL++cb0rl27tGXLFuXl5Rk/r76+XqNGjdKECROUlpamNm3aGD/DhIyMDPXu3VtVVVVGemfOnNH06dO1ceNGIz0AAADw8TkAAACjZsyYoZMnTxrr9enTR6mpqcZ6pi1btkx2u92SpXD37t315ptvyuVy6ZtvvtHkyZN9ain8V7p3766pU6dq165d+vnnn/Xqq6+qa9euxs/ZtGmTevTooZ07dxpvm3Ddddfpiy++kL+/v7FmRkYGdw0DAAAYxGIYAADAkPz8fK1fv95YLzAw0Oj/jm+Sy+VSdHS0HA6H0Y+yBQQE6Mknn9TevXt18OBBzZ49Wx07djTWb0whISF65ZVXVF1drZ07dyouLk5+fn7G+sePH1d0dLTxN9RN6dGjh9F/D5I0efLkRv8IIAAAQFPFYhgAAMAQ0x/H2rJlizp16mS0aUJBQYHsdrvRt1U7deqkd955R8ePH9eaNWvUt29fY21fMGTIEKWnp8vlcum1114zelduamqq7rjjDkvvN3ZXTEzMlWs2TPjll1+UlJRkrAcAANCcsRgGAAAwYPHixfrpp5+M9V544QUNHTrUWM+UtLQ0RUZGqr6+3kjPZrNp1apVqqur08yZM9WiRQsjXV/Vpk0bzZ8/XzU1NXr77beNLf6Li4tlt9tVUFBgpGfS0qVL1a1bN2O9RYsWGbu7GAAAoDljMQwAAOAhl8ulBQsWGOuFh4frrbfeMtYz5cknn9S0adOMtHr06KGMjAxVVVXpqaeeMtK8lrRs2VKJiYmqq6vTypUr1aVLF4+b9fX1ioyM1KpVqwxMaI6fn5+2bt1qtJmYmGi0BwAA0ByxGAYAAPDQrFmzdPHiRSMtf39/bdu2zUjLlJMnT6p///5at26dx60OHTrogw8+UHl5uSZMmGBgumvf008/rdraWi1ZskQBAQEe95555hlNnz7dwGTm3H777UpJSTHW++KLL5SdnW2sBwAA0ByxGAYAAPDAnj17lJ6ebqy3bNkyde3a1VjPU+Xl5YqIiNCePXs8bjkcDlVUVOiJJ57wfLAmKCEhQRUVFZo4caLHraVLl+ree+/VuXPnDExmxowZM4xej+JwOIy1AAAAmiMWwwAAAB4wdbWCJEVFRWnSpEnGep4qLi5W//79VVNT41Fn0KBBqqioUGpqqpE3YpuyDh06aMOGDfrxxx9lt9s9auXk5GjQoEE6ffq0oek8t3r1avn5+RlpHT58WO+9956RFgAAQHPEYhgAAMBNW7duVUlJiZFWixYt9MEHHxhpmbB7924NHDhQZ86ccbvRtm1bbdq0SXl5eQoNDTU4XdMXERGhkpISLV++3KNFaklJiQYMGKATJ04YnM59N910k5KSkoz1Fi5cqEuXLhnrAQAANCcshgEAANw0b948Y62kpCSFhIQY63kiLy9P0dHRHt2bfPfdd8vpdGr8+PEGJ2t+nn32WRUVFXl0vciBAwd8ajn8/PPPKyIiwkjrt99+U2pqqpEWAABAc8NiGAAAwA0ZGRk6dOiQkVafPn2UmJhopOWp/fv3a/jw4bp8+bLbDYfDoYKCAgUFBRmcrPnq2bOnSktLNXLkSLcblZWVio6O1vnz5w1O5r7Vq1cbay1evNhn/l4AAADXEhbDAAAAbnj55ZeNtZYvX26s5YkjR45o6NChbr8p3LJlS2VmZvIGpwVatWqlzMxMLVmyxO1GWVmZhg0bZnAq9/Xu3VtPP/20kdbp06eVkpJipAUAANCcsBgGAABooHXr1unIkSNGWrGxserbt6+RlidcLpeioqJ08uRJt54PCwvTvn37PHqrFX8vISFBu3fvVseOHd16/vvvv9dDDz1keCr3LFiwQC1btjTSWrJkiUf3YQMAADRHLIYBAAAaaOHChcZaycnJxlruunDhgu6//37V1ta69fygQYO0d+9ePjDXSPr166cffvhBt956q1vPf/7550pISDA8VcPdcMMNmjt3rpHWmTNnlJaWZqQFAADQXLAYBgAAaIDMzExVV1cbab3wwgs+8cG50aNHy+l0uvVsXFyc8vLy1KpVK8NT4X/p3LmzCgsLNWjQILeeT0lJ0YoVKwxP1XAzZ840dhc1V5gAAAA0DIthAACABvDkjtd/d/3112vevHlGWp6YMmWKcnJy3Hr2pZdeUnp6uuGJcLVat26tvLw8jRs3zq3nn332WW3fvt3wVA3j5+enN954w0jrxIkT2rBhg5EWAABAc8BiGAAA4CqVlpYqPz/fSGv27NkKCAgw0nJXWlqa1qxZ49aza9euNXqlBtz38ccfa/bs2W49O27cOB0+fNjwRA3z2GOP6ZZbbjHSMvUfbgAAAJoDFsMAAABXafHixUY6gYGBcjgcRlruys3N1bRp09x69vPPP1d8fLzhieCJN9980603b3///XeNGDFCZ8+etWCqq2fqreGSkhLl5eUZaQEAADR1LIYBAACugsvlUkZGhpHWq6++Kj8/PyMtd9TU1Gjs2LFuPbtixQqNGjXK8EQw4cUXX9QzzzzT4OeqqqoUGxtrwURXLzY2Vr169TLSSklJMdIBAABo6lgMAwAAXIVVq1YZ6XTo0MHrbwuPGzdOZ86cafBzc+bMcWvxiMazYsUKDRs2rMHPZWdne/0ahqSkJCOdzMxMuVwuIy0AAICmjMUwAADAVXD3Lt7/NH/+fCMddy1cuFCFhYUNfi42NlaLFi2yYCKY9umnn6pPnz4Nfi4xMVFOp9OCia7OyJEjZbfbjbRWr15tpAMAANCUsRgGAAD4G19++aXq6uo87rRq1UqTJk0yMJF7ioqK9PLLLzf4uaFDh2rLli0WTAQrtGjRQllZWW590M3bV0okJCQY6axcudJIBwAAoCn7PwAAAP//7N17bFP1G8fxJz9/mgyYHTdBMO4iooDQVkEjmKzVBMH4xxY1RNH0VAQxGu2iYrwk64wGAyQdyj8QcF28cBHjZhDFaHZKgHghrogiI4KdYmQLSLlMMNHk9wfQXzs2ON+e72lZ+34lJpt+z/N9jF1iPnt4DsEwAADARaxatUpLnaeeekpKSkq01MrGvHnzlJ+ZOHGifPTRRw50AycNHz5ctmzZIi6XS+m5jo4OaWhocKiriwsEAjJq1Cjbdf744w/ZvHmzho4AAAAKF8EwAADABRw6dEg2bdqkpVYoFNJSJxvLli2TH374QemZQYMGSWtrq5SWljrUFZxUVVUl69atU34uHA7LgQMHHOjImieffFJLHV2/0AEAAChUBMMAAAAXoCtcevjhh+Wqq67SUkvVwYMHs9pt3NzcnNU6Alw6Zs2aJc8//7zyc4899pgD3VjzxBNPaKnT2toqXV1dWmoBAAAUIoJhAACAC1i7dq2WOk8//bSWOtkIhUJy6tQppWcWLFgg999/v0MdIZeWLFki06dPV3qmra0tbytERowYIYZhaKm1ceNGLXUAAAAKEcEwAABAP3788UfZu3ev7TqTJk2SadOmaehI3datW+XDDz9UembChAmycuVKhzoqXvF4XGKxmDQ3N0tDQ4M0NzdLLBaTWCzm+N0bNmyQsrIypWd0vQguG/Pnz9dS54MPPtBSBwAAoBD9N98NAAAAXKo2bNigpY6unanZUP1j+UOGDJGPP/7YoW6KSzwel9bWVmlpaZF4PH7R8x6PR3w+nwQCAfF4PFp7GTt2rKxdu1Zmz55t+ZnOzk5ZtmyZPPfcc1p7sWL69Okyfvx42bdvn606sVhMDh06JKNHj9bUGQAAQOFgYhgAAKAf77//vpY6gUBASx1Va9askT179ig9s3TpUvYK29Tc3Cxer1e8Xq+Ew2FLobDImSC5sbFRvF6vVFZWSnNzs9a+Zs2apbw7uKGhQY4cOaK1D6t07RpWnZgHAAAoFgTDAAAAfdi9e7f8/PPPtusEg0EZNGiQho7UnD59Wl5++WWlZyZPniwLFy50qKPCZ5qmeL1eMQzjvDDY7XZLIBCQ+vp6qa+vl7a2NolEIlJfXy/PPPOMuN3ujPOJREIMw5DKykoxTVNbj0uXLlVaKXHy5El5/fXXtd2vIhgMaqnDOgkAAIC+sUoCAACgD7rCpHnz5mmpo2rFihXS1dWl9Mzbb7/tUDeFr66uThobGzP+XnV1tdTU1EhNTY1UVFSc94zP58v4PpFIiGmaEo1GU3uHE4mE+P1+MQxDIpGI8p7g3srKymTx4sVK07iRSEQWLVqU83UMLpdLHnjgAds/i7FYTLq6umTUqFGaOgMAACgMTAwDAAD04ZNPPrFd45prrpEZM2Zo6EZNT0+PvPbaa0rPzJ8/X6ZOnepQR4UrmUyK1+vNCIXdbre0tbWJaZoSCoX6DIX7UlFRIYZhiGma0tbWJtXV1al/Fo1Gxe/3SzKZtN3zwoULZcqUKUrP1NfX2743Gw8++KCWOlu2bNFSBwAAoJAQDAMAAPRy+PBh+e6772zXmTt3roZu1EUiETl27Jjl8y6XSxYvXuxgR4UpmUyK3+/PWBsRiUQkHo+fNw2syufziWma0tTUJC6XS0TO7CD2er2WdxZfyOrVq5XOr1q1Sn777Tfb96qqra2V0tJS23U+/fRTDd0AAAAUFoJhAACAXnRMC4uIPPTQQ1rqqHrrrbeUzi9ZskSGDx/uUDeFqXco7HK5pL29XUKhkNZ7zk0Ql5eXi8iZ1RLBYND25PC0adOU15y8+eabtu7M1n333We7BsEwAADA+QiGAQAAetm8ebPtGlVVVcp/XF+HaDQq3d3dls+PGzdOFixY4GBHham2tjYVCrvdbkkkEuLxeBy5y+PxSDweT72gLh6Pi9/vt1331VdfVTq/cuVK+euvv2zfq0rHOoljx47JV199paEbAACAwkEwDAAA0IuOfaSPPPKIhk7UvfHGG0rnX3nlFYc6KVzhcFhM0xSRM5PC0WjU9kvhLqasrExM08xYK2F3OnnMmDFKL6E7ceKErFmzxtad2Zg5c2bq39sOpoYBAAAyEQwDAACk2bFjh9J+3v7cc889GrpRs3XrVuno6LB8/tprr5VAIOBgR4UnkUhIQ0ND6vuWlhbHJoV76x0OL1++3Pa+4UWLFimdX7Fiha37sjVz5kzbNXgBHQAAQCaCYQAAgDTbtm2zXcPlcsmtt96qoRs1q1atUjr/0ksvOdRJ4QoGg6mv6+vrbb9kTpXH45FwOJz6vq6uzla9iooKMQzD8vl9+/Zp+RlRNXv2bNs1vv76azl16pSGbgAAAAoDwTAAAECa7du3265x7733auhEzfHjx+W9996zfP7qq6+Wxx9/3MGOCk88Hs9YIaH7RXNWhUKh1MvoTNNM9ZStF198Uen86tWrbd2XDV0/U99++62WOgAAAIWAYBgAACBNW1ub7Ro6phtVRaNRpfMvvPCCM40UsMbGxoyvnd4rfCHpU8PpfWVj/PjxMmfOHMvn169fLydPnrR1p6qRI0emXr5nx44dOzR0AwAAUBgIhgEAAM7q6OiQEydO2K5z9913a+hGzTvvvGP57JVXXikLFixwsJvCk0wmpbW1VUTOTAurrF9wgmEYqanh1tZWSSaTtuo9++yzls+ePn1aNm7caOu+bOjYM6zjTwQAAAAUCoJhAACAs3SERjfeeKOMGDFCQzfWHThwQHbu3Gn5/Jw5c6SkpMTBjgqPaZqp8LWmpibP3ZyR3kdLS4utWtOmTZOJEydaPr9u3Tpb92XjjjvusF1j69atGjoBAAAoDATDAAAAZ+kIhm+//XYNnah59913lc4HAgGHOilc6Xt8L5VgOH1q2W4wLKL2udiyZYscPXrU9p0qdPxsHT9+XDo6OjR0AwAAMPARDAMAAJzV3t5uu8aMGTM0dKJGZXqzqqoqLz0OdPF4PPX1pRIMezye1DqJXbt22a43d+5cpfPr16+3faeKkSNHyrhx42zXSf9vCQAAUMwIhgEAAM7SEQxPnz5dQyfWHTx4UH766SfL54PBoIPdFK5YLCYiouUFaDpVVFSIiEgikbBda+zYsUp7fD/77DPbd6rSMTX8/fffa+gEAABg4CMYBgAAEJE9e/bYrlFaWioTJkzQ0I11mzZtUjr/6KOPOtRJcSgrK8t3C/3SMQmrsk7iiy++sH2fKh2/eNm9e7eGTgAAAAY+gmEAAADRM0V42223aehEjcrUpt/vlzFjxjjYTWE699I5kUsvGPb5fKmv0/vMVm1trQwePNjS2Z6enpy/zO2WW26xXYOJYQAAgDMIhgEAAERPWDRlyhQNnaj58ssvLZ+dPXu2g50UrvRJ3HOrGwpVSUlJRth8MZ9//rlzzfRh4sSJtmt0dnZKT0+Phm4AAAAGNoJhAAAAGZjB8M6dO+XkyZOWz/v9fge7KVzpQeml9uIyHbuFe1P5nGzbtk37/RcyePBgXkAHAACgCcEwAACAiOzdu9d2jVwHwyqh3ODBg2Xq1KkOdoN8SA+GdU0zqwTD33zzjZY7VUyePNl2jY6ODg2dAAAADGwEwwAAACKyf/9+2zW8Xq+GTqxTCYbvuusuBzspfOXl5SIismvXrjx30j9dwfDNN98sQ4YMsXT21KlTOQ+HdQTDTkxaAwAADDQEwwAAoOh1dnbarnHDDTdo6ERNLBazfJY1EvacC12TyeQlEyomk8nUZ6C6ulprbZXPy/bt27XefTGTJk2yXePAgQMaOgEAABjYCIYBAEDR++WXX2zX0LH3VEVXV5ccPnzY8nmCYXtqampSX7e0tOSxk/9L78Pj8Witfeedd1o+q2M/t4rrrrvOdg0dvwwCAAAY6AiGAQBA0dMRDFdWVmroxDqVlQbDhg0Tt9vtYDeFL/0FdKZp5q2PdOnBcHp/OqhMIOd6vYaOnzUdP/MAAAADHcEwAAAoejpCoqqqKg2dWKcSxt10000OdlIcPB5Pas9wa2tr3tdJpK+RKC8vz5ho1kFlX3Z7e7vWuy9m2LBhUlJSYqvG77//rqkbAACAgYtgGAAAFL1ff/3Vdo1cTwzv3r3b8tl87D8uRKFQKPV1OBzOXyNn708mkyIiYhiGI3eofKb37t3rSA/9uf76623XYM8wAAAodgTDAACg6Kns6u1PrieGVUItgmE9DMMQl8slIiLNzc0Sj8fz0kcikZDly5eLiIjL5coIrHVS+dzkeoJaxy9ijhw5oqETAACAgYtgGAAAFD0dwfDYsWM1dGKdShA3fvx45xopImVlZRkhbF1dXV76SL83FApJWVmZI/eofG5yHQyPGTPGdg2CYQAAUOwIhgEAQNHTERANHz5cQyfWqexIZWJYn3A4nHqRn2maEgwGc3p/KBRKvXSuvLzcsWlhEbVguLOz07E++jJixAjbNQiGAQBAsSMYBgAARc/uxLCOkErF/v37lc4zMaxXNBpNrZSIRqMSjUZzdu+5FRLnvndqWlhE7XOjY0+3Ch2/iCEYBgAAxY5gGAAAFL1zL/HK1siRIzV1Yk1XV5fls4TC+nk8HmlsbEx9HwwGMwJbJ0Sj0Yzp5EgkIj6fz9E7VT473d3dDnZyPiaGAQAA7CMYBgAARU0lZO1ProNhlQnn0aNHO9hJ8TIMQ+rr61Pfh0Ihx9ZK1NXVZdQOBAKOrpA4p7y83PLZXIesTAwDAADYRzAMAACK2r///mu7hpN/nL8vKsHwoEGDHOykuIXDYYlEIqnvo9GoeL1eMU1TS33TNMXv92dMJwcCgZytrhARKS0ttXRuIAbDf/75p4ZOAAAABi6CYQAAUNQuu+yyfLegTCUYLikpcbAThEIhaWpqSu0cjsfj4vf7xe/3SyKRyKpmIpGQ2tpa8fv9GSFzU1NTTkNhEZGhQ4daOjcQg+Hjx49r6AQAAGDgIhgGAABF7T//sf+/Q//884+GTqz7+++/LZ8lGHaeYRhimqZUV1en/p5pmlJZWSmVlZVSV1cn8Xj8gjXi8bjU1dWJ1+uVyspKaWlpSf0zt9st7e3tYhiGU/8K/bIaDPf09DjcSSarfV2I3d3iAAAAA91/890AAABAPumYGNaxjkLFFVdcYfksqyRyw+PxiGmaEo1GJRwOS2dnp4icmf5tbGzMWAeR/tK4C62dKC8vl1AolJN9wv1RCWA7OzuV9hLboSMYPnbsmIZOAAAABi4mhgEAQFHTMTF8KQfDTAznlmEYkkgkpKmpKWOCOJ1pmqm/+uJ2u6WpqUkSiUReQ2ERtQBWx4scVdgNhwmGAQBAsWNiGAAAFDUdE8O5XiVx+eWXWz5LMJwfhmGkQmLTNCUej6f+Sg8kXS6XeDweqaioEJ/PJz6fTyoqKvLXeC/Dhg2zfLa7u9vBTs43dOhQOXr0aNbPs0oCAAAUu/8BAAD//+zdWWhVVxvG8ffOJFariQOmiUljjOIURUWsirUhTRUEFVJFI4KoCQ6oICg4Dy1oKS0UOldS0RYnxGDjhIkKcR5bx3hwBqMmmqjEQ6968QmfNSfpXq53nWTv8/9dv/vludjnIs9ZWYdiGAAAxDSTkrUxf//9t0IS70wya5yIxttLT09vlruBtZhcRRLtE7jvvPOO1fPPnz9XSgIAAOBP/KUAAABiWlxcnPUOkx+D09CqVSvPsy9evHCYBEFn8v6YXHGiwfYLGY3PPgAAgJ9RDAMAAFiKdjFscmKYU5GwYfL+RLsYtv3cmXzBAgAAEEQUwwAAIOaZ/Lt8JNG+SsKkgKMYho1nz555no120WpbDEe7yAYAAGhpKIYBAEDMsy20KIYRVCbvj9+KYU4MAwCAWEcxDAAAYp7tycFoF8OJiYmeZ7ljGDZMiuGkpCSHSRqiGAYAALBDMQwAAGKebUEU7VO5JgUcJ4Zhw+T96dChg8MkDdl+6UExDAAAYh3FMAAAiHnvvvuu1fPPnz+XcDislOa/mRTDtbW1DpMg6J48eeJ5Njk52WGSf3v8+LH1jnbt2ikkAQAA8C+KYQAAEPM0/gXepECz1blzZ8+z9+/fj2ppjeCorq72fGK4bdu2jtP8W3V1tfWOaJ9wBgAAaGkohgEAQMzTKIZramoUknhnUg6HQiGHSRBU169f9zz73nvvOUzSkMaJYYphAAAQ6yiGAQBAzNMohjVOMJpIS0vzPFtZWekwCYLK5L1JT093FyQCjc9btH8sDwAAoKWhGAYAADEvMTHResejR48UknhHMQzXTE4MR7sYfvjwofUOimEAABDrKIYBAEDM0/iX8rt37yok8Y5iGK615GL4zp071js6duyokAQAAMC/KIYBAEDM69Spk/WO27dv2wcxkJWV5XmWYhhvw+S96dmzp8MkDd26dct6h8k93QAAAEFEMQwAAGKexmnHmzdv2gcx0K9fP8+z165dc5gEQXXlyhXPs9nZ2Q6TNKTxeTM5dQ8AABBEFMMAACDmaRRE0T4x3KdPH8+zNTU1EgqFHKZB0Jw6dcrzbEJCQtRLVo0Tw926dVNIAgAA4F8UwwAAIOZ17drVeke0T+W2bt1aMjMzPc8fPnzYXRgETnl5uefZQYMGOUwSWU1NjdXzSUlJEh8fr5QGAADAnyiGAQAAROc6CY0fxDIxePBgz7MmRR9QVlbmedbkPdRw+vRp6x3R/rE8AACAlohiGAAAQHSuk/jrr78Ukng3bNgwz7MmRR9w4MABz7PDhw93mKShP//803oHxTAAAADFMAAAgIjoFEUtuRiuqqqSyspKh2kQFBUVFUbzI0aMcJQkMo1i+P3331dIAgAA4G8UwwAAACLSq1cv6x3RLob79+9vdE8q10nAC5P3pEePHpKUlOQwTUMaxbDG5x0AAMDvKIYBAABEpG/fvtY7ol0Mi4h89NFHnme5TgJemLwnJu+flgsXLljv6Nevn0ISAAAAf6MYBgAAEJ1i+NKlSxIOhxXSeJeXl+d5tqSkJOr54C+PHz82OjH8ySefOEzT0L1796S2ttZ6T+/evRXSAAAA+BvFMAAAgIikpKRI69atrfecO3dOIY13JsVwOByW7du3O0wDv/v111+N5nNychwliezEiRPWO3r27ClxcXEKaQAAAPyNYhgAAOCVgQMHWu84fvy4QhLvsrKypGvXrp7nTYs/xJZffvnF8+yoUaNUvkwxcezYMesdXCMBAADwPxTDAAAAr2gURhrFlakJEyZ4nj106JDcv3/fYRr41dmzZ+XatWue58ePH+8wTWQUwwAAAHoohgEAAF4ZNGiQ9Y6jR48qJDEzadIko/lNmzY5SgI/Ky4uNpqfOHGimyCNCIfDcurUKes9gwcPVkgDAADgfxTDAAAAr3zwwQfWO6qrq+X27dv2YQwMGTJEUlNTPc+bXBeA2LF582bPs7m5udKpUyeHaRo6ffq0yp6hQ4eq7AEAAPA7imEAAIBXunfvLh06dLDeU15erpDGTEFBgefZmzdvypEjRxymgd/8/vvvUltb63l+ypQpDtNEVlZWZr0jOztb2rRpo5AGAADA/yiGAQAAXqNxanjfvn0KScwUFhYazX/22WeOksCPVqxY4Xk2ISFB8vPzHaaJbO/evdY7hg0bppAEAAAgGCiGAQAAXqNRDO/fv18hiZm0tDQZOXKk5/mDBw/KmTNnHCaCX+zatUtCoZDn+alTp0pCQoLDRA3V1dXJyZMnrfdofL4BAACCgmIYAADgNRonCuvq6uTYsWMKaczMmDHDaH7t2rWOksBPli1bZjQ/c+ZMR0ka98cff6js4cQwAADA/1EMAwAAvGb48OESHx9vvac5rpMoKCiQ9u3be54vKSmRS5cuOUyElm7v3r1y5coVz/P9+/eXgQMHOkwUmcY1EqmpqZKenm4fBgAAICAohgEAAN7w4YcfWu8oKSmxD/IWioqKjObXrVvnKAn8YOnSpUbzixYtcpSkaaWlpdY7xowZo5AEAAAgOCiGAQAA3jB69GjrHRcvXjS6t1XL3Llzjea3bt0qV69edZQGLdnBgwfl/Pnznue7dOkiU6ZMcZgostLSUnny5In1Ho3PNQAAQJBQDAMAALxBq0DavHmzyh4TycnJxuVdc9wZi+Y3b948o/n58+c7StK03377TWVPbm6uyh4AAICgoBgGAAB4Q2ZmpqSkpFjv2bJli0Iac4sXLzaar6iokG3btjlKg5boiy++kOvXr3ueb9u2rRQWFjpMFFk4HJadO3da78nJyZGEhASFRAAAAMFBMQwAABDBuHHjrHeEQiE5d+6cQhozffv2lYkTJxo9s2DBAqmvr3eUCC1JVVWVrFy50uiZJUuWSLt27Rwlatzu3bslHA5b7+EaCQAAgIYohgEAACIYO3asyp7muE5CROTzzz83mn/w4IGsXr3aURq0JPPnz5eXL196nk9MTJSFCxc6TNS4TZs2qewZP368yh4AAIAgoRgGAACI4OOPP5Y2bdpY79m4caNCGnMZGRkyffp0o2c2bNhgdL0A/KesrMz42pA1a9ZIXFyco0SNq6qqktLSUus92dnZkpGRoZAIAAAgWCiGAQAAGpGfn2+9o66uTrZu3aqQxtzatWslPj7e6JlZs2Y5SoOWoKioyGg+KytL5syZ4yhN03744QeVPZ9++qnKHgAAgKChGAYAAGiEVqH0008/qewxlZycLEuWLDF65ujRo7Ju3TpHidCcpk6dKjdu3DB65quvvnKU5r99//33KnsohgEAACKjGAYAAGhEXl6eynUShw4dkjt37igkMrdixQpJTk42emb58uVSUVHhKBGaQ3FxsfF917m5uTJmzBhHiZpWWloqVVVV1nsGDBggmZmZCokAAACCh2IYAACgCRrXSYiIfPvttyp73saXX35p/Ex+fr7U1NQ4SINou3z5ssyePdv4uW+++cZBGm++++47lT1an18AAIAgohgGAABowuTJk1X2/Pjjj1JfX6+yy9SkSZNk1KhRRs88ePCAUi0A6uvrZdy4cfLy5Uuj55YuXSo9evRwlKpplZWVsmfPHpVdBQUFKnsAAACCiGIYAACgCTk5OZKWlma9p7a2VoqLi+0DvaWff/7Z+Jny8nJZvXq1gzSIlmnTpkkoFDJ6JiUlpVnvmf76669V9uTl5UlqaqrKLgAAgCCiGAYAAPgPRUVFKnve5koHLRkZGbJ8+XLj51atWiU7d+50kAiurV+/Xnbs2GH8XHP9WKKIyNOnT9WukSgsLFTZAwAAEFT/AAAA///s3W1Q1XX6x/HP7OwDzpqAihqx6ZgorIUW6iYxK6weXAatvEGx0KSwWk1TUZclzIRNoowoRehmUjM1b9KwNApvgkaLblxNpaItHDIV01BU0If/Bzv1n53ajXPO9eOAvF8zTs7U9/29VHpyefj9WAwDAAD8iunTp5t0amtrzb5F3hu5ubmKiory+FxycrKqqqocmAhO2bJli/7+9797fO6BBx5QYmKiAxO1zPPPP2/S6datm8aNG2fSAgAAuFqxGAYAAPgVISEhGj9+vEkrPz/fpOOtLVu2KCAgwONzSUlJHj+SAP6xd+9eTZo0yeNzffr00XPPPefARC1z5coVs/v5tDAAAMCvYzEMAADQAg888IBJZ//+/dq1a5dJyxsRERFePdLi3LlzcrvdOn36tANTwcrRo0d1xx13eHV269atXv2lgZWioiKzry8WwwAAAL+OxTAAAEAL/OUvf1FERIRJa/HixSYdb82cOVMpKSken6urq1NCQoKampocmAq+OnnypNxut1d/PiUlJbrlllscmKplmpqa9MQTT5i07rzzTvXq1cukBQAAcDVjMQwAANBCCxcuNOlUVVVp586dJi1vrV692qtF4JEjR5SUlKSLFy86MBW8VVdXpxEjRnj1idsHH3zQ7AWL3iosLFRDQ4NJa9GiRSYdAACAqx2LYQAAgBZKT09Xjx49TFqPPvqoScdbLpdLO3fuVPfu3T0++/777ysmJkbfffedA5PBU4cOHdLQoUNVU1Pj8dnY2FizF755q7GxUU8//bRJa/jw4RoyZIhJCwAA4GrHYhgAAMAD8+fPN+kcPHhQGzduNGl5KzQ0VG+//bZcLpfHZ6urqzV06FBVV1c7MBlaqqysTLGxsTpz5ozHZ8PDw/XWW285MJVnli5dqsbGRpNWZmamSQcAAKAjYDEMAADggRkzZqhz584mrQULFujKlSsmLW8NGTJEmzdv9upsfX29YmJiVFlZaTwVWmLVqlVKSkpSc3Ozx2dDQkK0e/dudenSxYHJWq6urk7Lli0zafXv319JSUkmLQAAgI6AxTAAAIAHOnfurIceesikdeLECS1fvtyk5YsxY8aooKDAq7MXL15UfHy81q5dazwV/pfs7Gylp6d7ddblcqmsrEy9e/c2nspzVs/tlvz/UkcAAID2hsUwAACAh+bPn69rrrnGpLV06VKzl275IiMjw6eF97Rp0zRr1izDifBLGhoalJCQoLy8PK8bpaWlbeI5vFVVVdqyZYtJKzIyUqmpqSYtAACAjoLFMAAAgIdCQkI0d+5ck9aFCxe0aNEik5avioqKNHHiRK/Pr1y5UtHR0Tpx4oThVPjRwYMHNXDgQO3evdvrxoYNGzRq1CjDqbz38MMPm7X+8Y9/mLUAAAA6ChbDAAAAXpg/f76Cg4NNWiUlJTpw4IBJy1ebN2/WiBEjvD5vsbzEzxUVFfm8dH/22Wd11113GU7lveLiYn3yyScmrcjISCUnJ5u0AAAAOhIWwwAAAF4IDg5WRkaGWS8tLc2s5asdO3YoISHB6/M/Pu7gscceM5yqY2pqatLEiRM1e/ZsnzqFhYWaM2eO0VS+OXHihDIzM816Tz31lFkLAACgI2ExDAAA4KV58+aZfWr46NGjPj031pLL5VJ5eblGjx7tUyc3N1c333xzm/k0dHuzdetW3XjjjXr99dd96hQXF5s9+sTCtGnTdOnSJZPWoEGDdPvtt5u0AAAAOhoWwwAAAF665pprtHjxYrNedna2ampqzHq+2rFjh8+PHvjss880ZMgQ3XvvvTpz5ozRZFe3L774QiNGjFBycrLq6up8aq1Zs0YzZswwmsx3mzZt0p49e8x6zz33nFkLAACgo2ExDAAA4IN58+apT58+Zr229EgJ6d8vK7N4JMSaNWvUr18/LV++3GCqq9PFixeVkZGhAQMG6L333vOpFRgYqIqKCk2bNs1oOt/V19dr1qxZZr077rhDcXFxZj0AAICOhsUwAACAjyyfcVpVVaUlS5aY9SwsWbJEmzZt8rnT2NioOXPmKDIyUtu3bzeY7OpRUlKiPn36qLCw0OdWRESEDhw40OaWplOmTNHZs2fNegUFBWYtAACAjojFMAAAgI+Sk5MVHR1t1svJydFHH31k1rMwadIkffrpp7r22mt9btXU1Gjs2LEaNGiQNmzYYDBd+9TU1KSCggJdd911mjlzpn744Qefm4mJifroo48UHh5uMKGdp556yvQRErNnz25zv0YAAID2hsUwAACAgRUrVpj2Jk6cqHPnzpk2fTV48GAdPnxYw4YNM+kdPnxYqamp6tevn15++WWTZntw/vx55eTkqFevXlqwYIFOnTpl0s3OzlZZWZmCgoJMelYOHTqkzMxMs15gYKBycnLMegAAAB0Vi2EAAAADt912m+6++26z3vHjx3XfffeZ9ax0795dH374oR566CGz5tdff63p06crNDRUy5Yt0/fff2/Wbku+/PJLLVy4UGFhYVqyZIkaGhpMuoGBgSotLdXjjz9u0rN06dIljR8/3rS5ZMkSdenSxbQJAADQEbEYBgAAMLJixQp17drVrFdaWqpnnnnGrGepqKhIZWVl6tGjh1mzvr5ef/vb39SzZ0+NHTtWpaWlZm1/aWxs1AsvvKCYmBj94Q9/0NNPP63m5maz/vDhw/X555/rzjvvNGtamjx5so4dO2bWGzp0qObNm2fWAwAA6MhYDAMAABjp2rWrSkpKTJvz58/Xhx9+aNq0kpiYqM8//1y33367eXv79u0aN26cevTooYyMDB05csT8Dift2rVLqampCg0N1V//+ldVVVWZ31FQUKDKykqFhYWZty3k5+dr586dps3XXnvNtAcAANCRsRgGAAAwNGnSJI0ePdq0OW7cOJ0+fdq0aaVbt2568803tXbtWgUHB5v3z5w5o8LCQg0cOFB9+/bV9OnTtX79ep08edL8Ll9UV1dr5cqVSk5OVkhIiEaNGqUNGzbo8uXL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mIqLi5PP59OOHTssv93Z2anNmzfL4XDonXfe0cjIiOUNkayjo0NPP/20kpKS9MEHH2hsbMzS+3FxcTp58qRlH4gIAACA0GMYBgAACHO7du2Sz+dTbGys5bd/+uknbd26VQ6HQ9u2bdPAwIDlDZGkrq5ORUVFcjqdqq6uNtKQmZmpc+fOqaCgwMh9AAAAhAbDMAAAwCzg8XjU1tYml8tl5P7169f19ttvKyEhQZs2bVJjY6ORjtloZGREH374oTIyMrRmzRqdOHHCWMsrr7yiQCCgRYsWGWsAAABAaDAMAwAAzBJLlixRa2ur8X/vP3jwoPLz8+V0OvX+++/r2rVrRnvCVWtrq55//nklJCTopZde0tmzZ421xMfHq66uTu+9956xBgAAAITWnJs3b940HQEAwH975pln9Mknn0z597z44ou65557QlAEhJe+vj7V1taqv7/fdIokqaysTBs2bND69etNp8xofX19qq6u1qFDh3Tu3DnTOZKkNWvWKDMzU9HR0aZTAEnSli1b5HA4pvWGz+fTo48+OuXfk5SUpN7e3hAUAQAQev80HQAAwHS6cOGCGhoaTGcARsybN0+5ubny+/2mU3T48GEdPnxYNptN69at08aNG7V27VrTWTPCwMCADh06pCNHjqilpcV0zoT58+friSeeUE1NjXw+n+kcYEJxcfG0D8MAAEQChmEAAIBZamRkRH6/Xw8++KC6u7t19epV00kKBoOqqqpSVVWVbDabPB6PvF6vvF6vEhISTOdZxu/3q7a2Vt98840CgYDpnFs88MADiomJUVVVlekUAAAATBOGYQAAgFmuublZdrtdbrdbTU1NpnMmBINB1dTUqKamRpKUnp4ur9ervLw85ebmKjY21nBh6Fy4cEFNTU2qq6uTz+fT9evXTSf9paioKG3YsEFHjx7VL7/8YjoH+Es8DREAgNBgGAYAAIgAw8PDGh4eVk5Ojrq6umbkB8KdP39e58+f1969eyX9MRSvXr1ajzzyiDIzM7Vy5UrDhbdnZGREgUBATU1NampqUmNjo4LBoOms/ysrK0t33XWXDh48aDoF+Ftz5swxnQAAwKzAMAwAABBBWltbNXfuXGVkZKi9vd10zt/6cyjet2+fJCk6Olrp6em6//775XQ6lZ2draVLlyoxMdFI3/j4uC5duqTu7m4FAgG1t7fr7Nmzunz5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tY7MKrty5UomJydz+vTpnD9/PpVKJdVqNS0tLWlvb0+pVMpdd92VHTt2pL+/Pxs3bmxKlrm5uVSr1dRqtSwsLKStrS2lUilbtmxJd3d3du3ala6urlXLshrK5XKmpqYyMzOTH3/8MbVaLZcvX878/HxaW1tz22235Y477khXV1fuueeebN++Pdu2bbsh77eLi4uZm5u7do/96aefUq/XU6vV0traeu29paurKwMDA9m5c2fWrVu35PUuXbqU0dHRhj/ztddeW+lfY9kWFxczOzub06dP59y5c6lWq9dexy0tLWlra8v69euzefPmbN26Nb29vXnwwQdvyOcYgKUphgH4xzp48GB+//33Jdeffvrp7Nu377qu9fPPP+fo0aMZHx/PF198kUqlct05Nm3alCeeeCIjIyPZv39/Ojo6rntv0Z09ezYff/xxxsfH891336VarS5rf6lUysDAQPbt25f9+/dnYGBglZKurHq9npMnT2ZiYiITExOZnJxc9jXa2tqye/fuPPXUU3nxxRezffv2VUi6smZnZ3PkyJF88skn+fbbbzM/P3/de++7777s3bs3zz33XF544YXceuutq5iUP3P+/Pl8+OGHS65v2rQpb7zxxp9eZ2FhIWNjYxkbG8tnn322rHvv7t27c+DAgbz88svZunXrde9bSqVSydjYWI4ePZrPP/98Wa/P/v7+PP/883n11VfT39//t7OstHK5nOPHj+fEiRM5ceJEyuXysq9x5513ZnBwMM8++2xGRkbS2dm5CklXxm+//ZZjx45lfHw8x48fz8WLF697b2tra3bt2pUDBw7kpZdeyrZt2/6w/uabbzZ8r3rmmWcyPDz8V6P/LefOncuxY8fy6aef5ptvvlnW/1OSbNiwIY899liGhoYyPDycnp6eVUoKQLP8CwAA///s3Xtcznf/B/BXrVIpRY7JQkwpKjmUwwilULGYTO5bmLYxpM3Y3Myx7plDOW05RDI3mVOTVKiRUzkVhiIxy6GEjir1+6Nfbrd1XZ/PdfX9fq8r3s/HY//s++7zftdVV3p/P9/3R6OqqqpK1UUQQgiRb9q0aVi3bp3cmD179sDb21uiihQzfvx45mOVCQkJGDRokKB5dXR0UF5eLvP6/PnzsXDhQrlrZGRkIDQ0FBEREQo3JWujr6+PMWPG4LvvvpN8h2NoaChmzJghNyY/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jM8//1zjuDfffNME1RAREXWOwTARERERERH1GDExMRrHKJVKzJ49G4cOHTJBRf9HpVJhw4YNWLRokcaxw4cPx+TJk01QFRERUecYDBMREREREVGP4efnh/DwcI3jGhoaEBERgXfeeQf37t0zel3//ve/ERISgri4OCiVSo3jN27cCHNzc6PXRURE1BUGw0RERERERNSjbNy4ERKJROM4lUqFL774Al5eXli6dCnOnz8PlUplsDpqamqQnJyMcePG4eWXX8aZM2cEXTd37lxMmTLFYHUQERHpwqy9vb29u4sgIiIyBolEgtbW1i4fj4+PR0JCggkrIiIiIkNJSkrCqlWrtL7OxcUFY8eORUBAALy9veHp6QlXV1fIZDKIRJ3vnVIoFKiursadO3dw/fp1XLt2DYWFhcjPzxe0O/iXAgMDcerUKdjY2GhdOxERkSGJu7sAIiIiIiIiIm3FxsaipKQEKSkpWl13584d7Nu3D/v27Xvsv4tEIshkMvTp0wcSiQRKpRLNzc1QKBRobGw0SM0+Pj44cOAAQ2EiInoqMBgmIiIiIiKiHik5ORnt7e1ITU3Vey6VSoXa2loDVNW5cePGISMjA05OTkZbg4iISBvsMUxEREREREQ9krm5OXbt2oXExESIxU/nvieJRIK4uDgcO3aMoTARET1VGAwTERERERFRj2VmZoa4uDicOXMGI0eO7O5yHjNx4kTk5+cjMTERlpaW3V0OERHRYxgMExERERERUY83evRo5OfnIy0tDUFBQd1ay9SpU3Hy5EkcP34cAQEB3VoLERFRV57Oe22IiIiIiIiItGRubo6YmBjExMSgsLAQe/bsQXZ2NkpLS42+9qhRoxAVFYXXX38dnp6eRl+PiIhIX2bt7e3t3V0EERGRMRw6dAgqlarLx4cMGQJvb28TVkRERETd4datWzh79iyuXLmC4uJi3Lx5E99++y2USqXWc4nFYri7u2Pw4MEYOXIkRo0ahRdeeAGurq5GqJyIiMh4GAwTERERERFRr9Pa2orvv/8e9+7dQ319Perr66FQKNDa2orW1laYm5vD0tISUqkUUqkUdnZ2cHNzg5ubGywsLLq7fCIiIr0xGCYiIiIiIiIiIiLqZXj4HBEREREREREREVEvw2CYiIiIiIiIiIiIqJdhMExERERERERERETUyzAYJiIiIiIiIiIiIuplGAwTERERERERERER9TIMhomIiIiIiIiIiIh6GQbDRERERERERERERL0Mg2EiIiIiIiIiIiKiXobBMBEREREREREREVEvw2CYiIiIiIiIiIiIqJf5fwAAAP//7NiBAAAAAIAgf+tBLozEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwEwAAAP//7NiBAAAAAIAgf+tBLozEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgJkAAAD//+zYgQAAAACAIH/rQS6MxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMBMAAAD//+zYgQAAAACAIH/rQS6MxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAICZAAAA///s2IEAAAAAgCB/60EujMQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHD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AADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAICZAAAA///s2IEAAAAAgCB/60EujMQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADATAAAA///s2IEAAAAAgCB/60EujMQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAmQAAAP//7NiBAAAAAIAgf+tBLozEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwEwAAAP//7diBAAAAAIAgf+tBLozEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwI4YBAAAAAGbEMAAAAADAjBgGAAAAAJgRwwAAAAAAM2IYAAAAAGBGDAMAAAAAzIhhAAAAAIAZMQwAAAAAMCOGAQAAAABmxDAAAAAAwIwYBgAAAACYEcMAAAAAADNiGAAAAABgRgwDAAAAAMyIYQAAAACAGTEMAAAAADAjhgEAAAAAZsQwAAAAAMCMGAYAAAAAmBHDAAAAAAAzYhgAAAAAYEYMAwAAAADMiGEAAAAAgBkxDAAAAAAwE+8/A565LHgpAAAAAElFTkSuQmCC',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 500.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Home Pickup',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue1 ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue1 = newValue!);
                                      if (newValue!) {
                                        FFAppState().string = 'Home Pickup';
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                      if (_model.checkboxValue1 == true)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(
                              maxWidth: 500.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController5,
                                        focusNode: _model.textFieldFocusNode5,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Your Address',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .textController5Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 500.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Drop at headquaters',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue2 ??= true,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue2 = newValue!);
                                      if (newValue!) {
                                        FFAppState().string =
                                            'Headquater Delivery';
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation4']!),
                      ),
                      if (_model.checkboxValue2 == true)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(
                              maxWidth: 500.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      donationpageitemsAdminRecord.hq1,
                                      'Null',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      donationpageitemsAdminRecord.hq2,
                                      'Null',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      donationpageitemsAdminRecord.hq3,
                                      'Null',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation5']!),
                        ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 12.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await DonationRecord.collection.doc().set({
                              ...createDonationRecordData(
                                category: widget.cat,
                                name: currentUserDisplayName,
                                description: _model.textController4.text,
                                image: _model.uploadedFileUrl,
                                phone: _model.textController3.text,
                                address: valueOrDefault(
                                    currentUserDocument?.address, ''),
                                email: _model.textController2.text,
                                method: FFAppState().string,
                              ),
                              ...mapToFirestore(
                                {
                                  'date': FieldValue.serverTimestamp(),
                                },
                              ),
                            });
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: const Text('Thank You'),
                                    content: const Text(
                                        'Donation Tixcket as been submitted Successfully and an admin will message you shortly'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          text: 'Submit Donation Ticket',
                          icon: const Icon(
                            Icons.receipt_long,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 48.0,
                            padding: const EdgeInsets.all(0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF951DB2),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 4.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchUrl(Uri(
                                    scheme: 'tel',
                                    path: donationpageitemsAdminRecord
                                        .phonenumber,
                                  ));
                                },
                                child: Container(
                                  width: 120.0,
                                  constraints: const BoxConstraints(
                                    maxWidth: 500.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 16.0, 8.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.local_phone,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 36.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            'Call Us',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation6']!),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchUrl(Uri(
                                      scheme: 'mailto',
                                      path: donationpageitemsAdminRecord.email,
                                      query: {
                                        'subject':
                                            'Erranders Nigeria Donation Team',
                                      }
                                          .entries
                                          .map((MapEntry<String, String> e) =>
                                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                          .join('&')));
                                },
                                child: Container(
                                  width: 120.0,
                                  constraints: const BoxConstraints(
                                    maxWidth: 500.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 16.0, 8.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.email_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 36.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            'Email Us',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation7']!),
                            ),
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
