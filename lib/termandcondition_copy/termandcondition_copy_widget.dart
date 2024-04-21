import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'termandcondition_copy_model.dart';
export 'termandcondition_copy_model.dart';

class TermandconditionCopyWidget extends StatefulWidget {
  const TermandconditionCopyWidget({super.key});

  @override
  State<TermandconditionCopyWidget> createState() =>
      _TermandconditionCopyWidgetState();
}

class _TermandconditionCopyWidgetState
    extends State<TermandconditionCopyWidget> {
  late TermandconditionCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermandconditionCopyModel());

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
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 570.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    'Terms and Condition',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    'Friday, April 18th  ||  12:30pm',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 12.0),
                                  child: Text(
                                    '1.\tTerms and Conditions of Service for Erranders Nigeria\n\n2.\tWelcome to Erranders Nigeria! These Terms and Conditions (the \"Agreement\") govern your use of our platforms and services, including Erranders Nigeria, Trade by Barter, and Care for the Needy (collectively referred to as the \"Services\"). By accessing or using our platforms and services, you agree to comply with and be bound by the terms and conditions stated herein. Please read this Agreement carefully before using our Services.\n\n3.\tDefinitions\na.\t\"Erranders Nigeria\" refers to the company providing the platforms and services described herein.\nb.\t\"User\" or \"You\" refers to any individual or entity accessing or using the Services.\nc.\t\"Errand Provider\" refers to individuals who offer to perform errands on behalf of Users.\nd.\t\"Errand Requester\" refers to Users who request an errand to be performed by an Errand Provider.\ne.\t\"Errand\" refers to a task or service requested by an Errand Requester and performed by an Errand Provider.\nf.\t\"Trade by Barter\" refers to the platform that facilitates the exchange of goods or services between Users.\ng.\t\"Care for the Needy\" refers to the platform that connects Users willing to provide assistance to those in need.\n\n4.\tService Description\na.\tErranders Nigeria provides platforms that connect Users to facilitate the completion of various tasks, errands, and exchanges of goods or services.\nb.\tErranders Nigeria acts solely as an intermediary platform and does not guarantee the availability, quality, or reliability of the Errand Providers, goods, or services exchanged through Trade by Barter, or the provision of assistance through Care for the Needy.\nc.\tErranders Nigeria reserves the right to modify, suspend, or terminate the Services at any time without prior notice.\n\n5.\tUser Eligibility\na.\tUsers must be at least 18 years old and capable of entering into legally binding agreements.\nb.\tUsers are responsible for providing accurate and up-to-date information during the registration process.\n\n6.\tUser Responsibilities\na.\tUsers agree to use the Services in compliance with all applicable laws and regulations.\nb.\tUsers are solely responsible for any interactions, communications, and transactions with other Users.\nc.\tUsers agree not to engage in any unlawful, abusive, or deceptive activities while using the Services.\nd.\tUsers must ensure the accuracy and completeness of any information provided to Erranders Nigeria or other Users.\n\n7.\tErrand Requesters\na.\tErrand Requesters are responsible for providing clear and accurate instructions when submitting an errand request.\nb.\tErrand Requesters agree to compensate Errand Providers for the cost of goods or services purchased on their behalf, along with any additional fees or expenses agreed upon.\nc.\tErrand Requesters acknowledge that Errand Providers are independent contractors and not employees or agents of Erranders Nigeria.\n\n8.\tErrand Providers\na.\tErrand Providers agree to perform errands in a timely and professional manner, following the instructions provided by the Errand Requester.\nb.\tErrand Providers are responsible for their own transportation, equipment, and personal safety when performing errands.\nc.\tErrand Providers must comply with all applicable laws, regulations, and licensing requirements when performing specialized errands (e.g., legal, medical, or financial services).\n\n9.\tTrade by Barter\na.\tTrade by Barter facilitates the exchange of goods or services between Users.\nb.\tUsers engaging in trades through Trade by Barter agree to accurately represent the condition and quality of the goods or services offered.\nc.\tUsers are responsible for any tax or legal obligations associated with their trades conducted through Trade by Barter.\n\n10.\tCare for the Needy\na.\tCare for the Needy connects Users willing to provide assistance to those in need.\nb.\tUsers participating in Care for the Needy acknowledge and understand that Erranders Nigeria is not responsible for verifying the authenticity or accuracy of the assistance provided or received.\n\n11.\tFees and Payments\na.\tErranders Nigeria may charge fees for the use of certain features or services, which will be clearly communicated to Users.\nb.\tUsers agree to pay all fees and charges associated with their use of the Services promptly.\nc.\tErranders Nigeria may facilitate payments between Users, but it does not guarantee the availability or accuracy of any payment processing services.\n\n12.\tIntellectual Property\na.\tThe Services and all related content, including but not limited to trademarks, logos, and software, are the property of Erranders Nigeria.\nb.\tUsers may not copy, modify, distribute, or reproduce any part of theServices without prior written consent from Erranders Nigeria.\n\n13.\tLimitation of Liability\na.\tErranders Nigeria shall not be liable for any direct, indirect, incidental, or consequential damages arising from the use of the Services or the performance of any errand, trade, or assistance provided through the platforms.\nb.\tUsers agree to indemnify and hold Erranders Nigeria harmless from any claims, damages, or losses arising from their use of the Services or any violation of this Agreement.\n\n14.\tPrivacy\na.\tUsers\' personal information will be collected and processed in accordance with Erranders Nigeria\'s Privacy Policy.\n\n15.\tTermination\na.\tUsers may terminate their use of the Services at any time by closing their account.\nb.\tErranders Nigeria may terminate or suspend a User\'s access to the Services without prior notice if they violate any provision of this Agreement.\n\n16.\tGoverning Law and Dispute Resolution\na.\tThis Agreement shall be governed by and construed in accordance with the laws of Nigeria.\nb.\tAny disputes arising from or relating to this Agreement shall be resolved through arbitration in accordance with the rules of the Nigerian Arbitration and Conciliation Act.\nc.\tIf any provision of this Agreement is found to be invalid or unenforceable, the remaining provisions shall continue to be valid and enforceable to the fullest extent permitted by law.\n\n17.\tModifications\na.\tErranders Nigeria reserves the right to modify or update this Agreement at any time without prior notice.\nb.\tUsers are responsible for reviewing the most current version of this Agreement regularly.\nc.\tContinued use of the Services after any modifications to this Agreement shall constitute acceptance of the modified terms.\n\n18.\tEntire Agreement\na.\tThis Agreement constitutes the entire agreement between Users and Erranders Nigeria, superseding any prior agreements or understandings.\nb.\tAny waiver of any provision of this Agreement shall only be effective if in writing and signed by Erranders Nigeria.\n\n19.\tBy using the Erranders Nigeria platforms and services, including Trade by Barter and Care for the Needy, you acknowledge that you have read, understood, and agreed to be bound by these Terms and Conditions. If you do not agree with any part of this Agreement, you should discontinue use of the Services.\n',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
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
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).accent1,
                        width: 2.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Close',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
