import 'package:flutter/cupertino.dart';
import 'package:no_fear_speak/index.dart';

import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewCompanyReview2Widget extends StatefulWidget {
  const NewCompanyReview2Widget({
    Key? key,
    this.maleDominated,
    this.lgbtqFriendly,
    this.safeEnvironment,
    this.witnessHarassment,
    this.facedHarassment,
    this.company,
    this.date,
  }) : super(key: key);

  final bool? maleDominated;
  final bool? lgbtqFriendly;
  final bool? safeEnvironment;
  final bool? witnessHarassment;
  final bool? facedHarassment;
  final CompaniesRecord? company;
  final String? date;

  @override
  _NewCompanyReview2WidgetState createState() =>
      _NewCompanyReview2WidgetState();
}

class _NewCompanyReview2WidgetState extends State<NewCompanyReview2Widget> {
  TextEditingController? textController;
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
            gradient: LinearGradient(
              colors: [Color(0xFFE2B9FF), Color(0xFFF9F5FC)],
              stops: [0, 1],
              begin: AlignmentDirectional(0, -1),
              end: AlignmentDirectional(0, 1),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(22, 44, 0, 0),
                child: Container(
                  width: 369,
                  height: 143,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Text(
                    'New Review',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'jackfont',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 80,
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
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(33),
                    topRight: Radius.circular(33),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 15, 0, 0),
                          child: Container(
                            width: 354,
                            height: 500,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDDFC),
                              borderRadius: BorderRadius.circular(33),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 0, 27, 0),
                              child: TextFormField(
                                controller: textController,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Description',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'jackfont',
                                        color: Color(0xFF58197E),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
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
                                    .bodyText2
                                    .override(
                                      fontFamily: 'jackfont',
                                      color: Color(0xFF58197E),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      useGoogleFonts: false,
                                    ),
                                maxLines: null,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 57, 50, 12),
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
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFEFDDFC)),
                              textStyle: MaterialStateProperty.all(
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Avenir Reg',
                                      color: Color(0xFF58197E),
                                      fontSize: 15,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              foregroundColor: MaterialStateProperty.all(
                                Color(0xFF58197E),
                              ),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              side: MaterialStateProperty.all(BorderSide(
                                  color: Colors.transparent, width: 0)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.transparent, width: 0),
                                    borderRadius: BorderRadius.circular(18)),
                              ),
                            ),
                            onPressed: () async {
                              final companyPostsCreateData =
                                  createCompanyPostsRecordData(
                                companyId: widget.company!.reference,
                                text: textController!.text,
                                date: widget.date,
                                maleDominated: widget.maleDominated,
                                lgbtqFriendly: widget.lgbtqFriendly,
                                safeEnvironment: widget.safeEnvironment,
                                witnessHarassment: widget.witnessHarassment,
                                facedHarassment: widget.facedHarassment,
                              );
                              await CompanyPostsRecord.collection
                                  .doc()
                                  .set(companyPostsCreateData);
                              context.pushNamed('review_suck');
                            },
                            child: Text('Submit Review'),
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
