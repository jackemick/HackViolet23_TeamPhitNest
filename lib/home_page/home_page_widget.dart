import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    this.companyName,
  }) : super(key: key);

  final String? companyName;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
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
      body: GestureDetector(
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Container(
                  width: 369,
                  height: 248,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(-0.9, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: GradientText(
                        'No\nFear\nSpeak\n',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Avenir',
                              fontSize: 80,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              useGoogleFonts: false,
                              lineHeight: 0.842,
                            ),
                        colors: [
                          Color(0xFFEFDDFC),
                          FlutterFlowTheme.of(context).primaryBtnText
                        ],
                        gradientDirection: GradientDirection.btt,
                        gradientType: GradientType.linear,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 115),
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
                          'company_search',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 400),
                            ),
                          },
                        );
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 224,
                        height: 50,
                        color: Color(0xFFEFDDFC),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Avenir',
                                  color: Colors.white,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0,
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
      ),
    );
  }
}
