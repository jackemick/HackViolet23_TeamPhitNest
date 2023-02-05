import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FindEmployeesWidget extends StatefulWidget {
  const FindEmployeesWidget({Key? key}) : super(key: key);

  @override
  _FindEmployeesWidgetState createState() => _FindEmployeesWidgetState();
}

class _FindEmployeesWidgetState extends State<FindEmployeesWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFE2B9FF),
                  FlutterFlowTheme.of(context).primaryBtnText
                ],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: GradientText(
                    'Find Employees',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Avenir Reg',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          useGoogleFonts: false,
                        ),
                    colors: [
                      Color(0xFFEFDDFC),
                      FlutterFlowTheme.of(context).primaryBtnText
                    ],
                    gradientDirection: GradientDirection.btt,
                    gradientType: GradientType.linear,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                  child: Text(
                    'Company X',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Avenir Reg',
                          color: Color(0xFF58197E),
                          fontSize: 15,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Container(
                  width: 353,
                  height: 53,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(27, 26, 0, 0),
                    child: Container(
                      width: 175,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Color(0xFFE2B9FF),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Leave a Review',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
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
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 20),
                    child: Container(
                      width: 348,
                      height: 79,
                      decoration: BoxDecoration(
                        color: Color(0xFFE2B9FF),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1, -0.35),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 14, 0, 0),
                              child: Text(
                                'Employee Name',
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Department',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Reg',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 15,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 348,
                      height: 79,
                      decoration: BoxDecoration(
                        color: Color(0xFFE2B9FF),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1, -0.35),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 14, 0, 0),
                              child: Text(
                                'Employee Name',
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Department',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Reg',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 15,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 348,
                      height: 79,
                      decoration: BoxDecoration(
                        color: Color(0xFFE2B9FF),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1, -0.35),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 14, 0, 0),
                              child: Text(
                                'Employee Name',
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Department',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Reg',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 15,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 348,
                      height: 79,
                      decoration: BoxDecoration(
                        color: Color(0xFFE2B9FF),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1, -0.35),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 14, 0, 0),
                              child: Text(
                                'Employee Name',
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Department',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Reg',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 15,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 348,
                      height: 79,
                      decoration: BoxDecoration(
                        color: Color(0xFFE2B9FF),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1, -0.35),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 14, 0, 0),
                              child: Text(
                                'Employee Name',
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Department',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Reg',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 15,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Scroll for More',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Avenir Reg',
                        color: Color(0xFF58197E),
                        useGoogleFonts: false,
                      ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xFF58197E),
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
