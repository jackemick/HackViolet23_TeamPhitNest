import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExtCompanyReviewWidget extends StatefulWidget {
  const ExtCompanyReviewWidget({
    Key? key,
    this.company,
  }) : super(key: key);

  final CompaniesRecord? company;

  @override
  _ExtCompanyReviewWidgetState createState() => _ExtCompanyReviewWidgetState();
}

class _ExtCompanyReviewWidgetState extends State<ExtCompanyReviewWidget> {
  TextEditingController? textController;
  bool? switchValue1;
  bool? switchValue2;
  bool? switchValue3;
  bool? switchValue4;
  bool? switchValue5;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFE2B9FF),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 60, 0, 15),
                child: Container(
                  width: 369,
                  height: 151,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Text(
                    widget.company!.name!,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Avenir Reg',
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          useGoogleFonts: false,
                          lineHeight: 0.842,
                        ),
                  ),
                ),
              ),
              Container(
                width: 393,
                height: 657,
                decoration: BoxDecoration(
                  color: Color(0xFFF7ECFF),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: 354,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFDDFC),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
                            child: TextFormField(
                              controller: textController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Date (optional)',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Avenir Reg',
                                      color: Color(0x7E58197E),
                                      useGoogleFonts: false,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Avenir Reg',
                                    color: Color(0xFF58197E),
                                    fontSize: 15,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 0, 0, 15),
                              child: Container(
                                width: 354,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEFDDFC),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        22, 0, 0, 0),
                                    child: Text(
                                      'Male Dominated',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Avenir Reg',
                                            color: Color(0xFF58197E),
                                            fontSize: 15,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 18, 16),
                              child: Switch(
                                value: switchValue1 ??= false,
                                onChanged: (newValue) async {
                                  setState(() => switchValue1 = newValue!);
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                activeTrackColor: Color(0xFFE2B9FF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(18, 0, 0, 15),
                            child: Container(
                              width: 354,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFDDFC),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      22, 0, 0, 0),
                                  child: Text(
                                    'LGBTQ+ Friendly',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Avenir Reg',
                                          color: Color(0xFF58197E),
                                          fontSize: 15,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 18, 16),
                            child: Switch(
                              value: switchValue2 ??= false,
                              onChanged: (newValue) async {
                                setState(() => switchValue2 = newValue!);
                              },
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              activeTrackColor: Color(0xFFE2B9FF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(18, 0, 0, 15),
                            child: Container(
                              width: 354,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFDDFC),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      22, 0, 0, 0),
                                  child: Text(
                                    'Safe Environment',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Avenir Reg',
                                          color: Color(0xFF58197E),
                                          fontSize: 15,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 18, 16),
                            child: Switch(
                              value: switchValue3 ??= false,
                              onChanged: (newValue) async {
                                setState(() => switchValue3 = newValue!);
                              },
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              activeTrackColor: Color(0xFFE2B9FF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(18, 0, 0, 15),
                            child: Container(
                              width: 354,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFDDFC),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      22, 0, 0, 0),
                                  child: Text(
                                    'Witnessed Harassment',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Avenir Reg',
                                          color: Color(0xFF58197E),
                                          fontSize: 15,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 18, 16),
                            child: Switch(
                              value: switchValue4 ??= false,
                              onChanged: (newValue) async {
                                setState(() => switchValue4 = newValue!);
                              },
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              activeTrackColor: Color(0xFFE2B9FF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(18, 0, 0, 15),
                            child: Container(
                              width: 354,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFDDFC),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      22, 0, 0, 0),
                                  child: Text(
                                    'Faced Harassment',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Avenir Reg',
                                          color: Color(0xFF58197E),
                                          fontSize: 15,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 18, 16),
                            child: Switch(
                              value: switchValue5 ??= false,
                              onChanged: (newValue) async {
                                setState(() => switchValue5 = newValue!);
                              },
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              activeTrackColor: Color(0xFFE2B9FF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 12, 50, 8),
                      child: Container(
                        width: 232,
                        height: 58,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE9CCFF),
                              FlutterFlowTheme.of(context).primaryBtnText
                            ],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, 1),
                            end: AlignmentDirectional(0, -1),
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'new_company_review2',
                                queryParams: {
                                  'maleDominated': serializeParam(
                                    switchValue1,
                                    ParamType.bool,
                                  ),
                                  'lgbtqFriendly': serializeParam(
                                    switchValue2,
                                    ParamType.bool,
                                  ),
                                  'safeEnvironment': serializeParam(
                                    switchValue3,
                                    ParamType.bool,
                                  ),
                                  'witnessHarassment': serializeParam(
                                    switchValue4,
                                    ParamType.bool,
                                  ),
                                  'facedHarassment': serializeParam(
                                    switchValue5,
                                    ParamType.bool,
                                  ),
                                  'company': serializeParam(
                                    widget.company,
                                    ParamType.Document,
                                  ),
                                  'date': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'company': widget.company,
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 400),
                                  ),
                                },
                              );
                            },
                            text: 'Continue',
                            options: FFButtonOptions(
                              width: 224,
                              height: 50,
                              color: Color(0xFFEFDDFC),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Avenir Reg',
                                    color: Color(0xFF58197E),
                                    fontSize: 15,
                                    useGoogleFonts: false,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
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
  }
}
