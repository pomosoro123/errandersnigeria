import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'admin_customer_support_model.dart';
export 'admin_customer_support_model.dart';

class AdminCustomerSupportWidget extends StatefulWidget {
  const AdminCustomerSupportWidget({super.key});

  @override
  State<AdminCustomerSupportWidget> createState() =>
      _AdminCustomerSupportWidgetState();
}

class _AdminCustomerSupportWidgetState
    extends State<AdminCustomerSupportWidget> {
  late AdminCustomerSupportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminCustomerSupportModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Support Tickets',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 1.0,
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      lineHeight: 12.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: FlutterFlowTheme.of(context).secondary,
                      backgroundColor: const Color(0xFFE0E3E7),
                      barRadius: const Radius.circular(0.0),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'Total Tickets',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 0.0, 0.0),
                          child: FutureBuilder<int>(
                            future: queryUsersRecordCount(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              int textCount = snapshot.data!;
                              return Text(
                                formatNumber(
                                  textCount,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: StreamBuilder<List<SupportticketsRecord>>(
                      stream: querySupportticketsRecord(
                        queryBuilder: (supportticketsRecord) =>
                            supportticketsRecord.where(
                          'status',
                          isEqualTo: 'pending',
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<SupportticketsRecord>
                            listViewSupportticketsRecordList = snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewSupportticketsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewSupportticketsRecord =
                                listViewSupportticketsRecordList[listViewIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 8.0),
                              child: Container(
                                width: 100.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'AdminSupportDetails',
                                      queryParameters: {
                                        'ref': serializeParam(
                                          listViewSupportticketsRecord.ref,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,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',
                                                width: 44.0,
                                                height: 44.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${listViewSupportticketsRecord.email} submitted a support ticket',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
