import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'premium_experience_details_model.dart';
export 'premium_experience_details_model.dart';

class PremiumExperienceDetailsWidget extends StatefulWidget {
  const PremiumExperienceDetailsWidget({super.key});

  @override
  State<PremiumExperienceDetailsWidget> createState() =>
      _PremiumExperienceDetailsWidgetState();
}

class _PremiumExperienceDetailsWidgetState
    extends State<PremiumExperienceDetailsWidget> {
  late PremiumExperienceDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PremiumExperienceDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AdminRecord>>(
      stream: queryAdminRecord(
        singleRecord: true,
      ),
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
        List<AdminRecord> premiumExperienceDetailsAdminRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final premiumExperienceDetailsAdminRecord =
            premiumExperienceDetailsAdminRecordList.isNotEmpty
                ? premiumExperienceDetailsAdminRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 30.0,
                          borderWidth: 2.0,
                          buttonSize: 44.0,
                          icon: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            context.pop();
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 64.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.workspace_premium,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 40.0,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      'Premium Package',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                    child: Text(
                      'Dear Esteemed Customer,\n\nHere are the benefits you stand to enjoy when you subscribe to our premium package:\n\nUnlimited Errand Assignments:\nAs a premium package member, you now have unparalleled access to unlimited errand assignments. This means more opportunities for you to showcase your skills and contribute to our customers\' satisfaction. Whether it\'s grocery shopping, personal shopping, package delivery, or any other errand, there are no restrictions or limits on the number of assignments you can undertake. Your dedication and efficiency make a significant impact on our customers\' lives, and we are thrilled to offer you the chance to take on as many errands as you desire.\n\nPriority Assignment:\nWith our premium package, you will receive priority assignment status. This means that you will be among the first to be assigned new errands as they come in. Your exceptional performance and commitment have earned you this privilege. By prioritizing your assignments, we aim to ensure that you have a steady stream of work while also recognizing your exceptional contributions to our team.\n\nExclusive Advert Discounts:\nIn addition to unlimited errand assignments, as a premium package member, you will enjoy exclusive discounts on advertisements. We have partnered with local businesses to bring you discounted rates on their products and services. From restaurants and retail stores to entertainment venues and wellness centers, you can take advantage of special offers and promotions available exclusively to our premium members. It\'s our way of showing appreciation for your hard work and providing additional benefits beyond the scope of your errand assignments.\n\nPersonalized Support:\nWe understand that your success is our success. As a premium package member, you will receive personalized support from our dedicated team. Whether you need assistance with scheduling, handling customer requests, or any other aspect of your errand running journey, our support staff is here to ensure your experience is smooth and rewarding. We value your feedback and are committed to helping you excel in your role.\n\nRecognition and Growth Opportunities:\nYour dedication and exceptional performance do not go unnoticed. As a premium package member, you will be eligible for special recognition and growth opportunities within our company. We believe in nurturing talent and providing avenues for professional development. This may include leadership roles, training programs, or access to new projects that align with your skills and aspirations. Your success is integral to our overall success, and we are committed to supporting your growth every step of the way.\n\nTo learn more about the premium package benefits and how to upgrade, please reach out to our team at [contact information]. We are here to answer any questions you may have and guide you through the process.\n\nThank you for being an invaluable part of our Erranders Nigeria customers. We are excited to offer you these exclusive premium package benefits and look forward to seeing your continued success as an esteemed member of Erranders Nigeria.\n\nKind regards,\nErranders Nigeria Team\n',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 50.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'subcriptionpayment',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 100),
                                  ),
                                },
                              );
                            },
                            text: 'Subscribe',
                            options: FFButtonOptions(
                              width: 230.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).success,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
