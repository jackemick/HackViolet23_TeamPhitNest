import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class NewEmpReview2Widget extends StatefulWidget {
  const NewEmpReview2Widget({
    Key? key,
    this.agg,
    this.reflect,
    this.approach,
    this.witness,
    this.faced,
    this.person,
  }) : super(key: key);

  final bool? agg;
  final bool? reflect;
  final bool? approach;
  final bool? witness;
  final bool? faced;
  final PeopleRecord? person;

  @override
  _NewEmpReview2WidgetState createState() => _NewEmpReview2WidgetState();
}

class _NewEmpReview2WidgetState extends State<NewEmpReview2Widget> {
  PeoplePostsRecord? post;
  TextEditingController? textController1;
  TextEditingController? textController2;
  final textFieldMask2 = MaskTextInputFormatter(mask: '##/####');
  TextEditingController? textController3;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
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
                          padding: EdgeInsetsDirectional.fromSTEB(18, 40, 0, 0),
                          child: Container(
                            width: 354,
                            height: 51,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDDFC),
                              borderRadius: BorderRadius.circular(33),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 0, 0, 0),
                              child: TextFormField(
                                controller: textController1,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Relationship with you',
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
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 10, 0, 0),
                          child: Container(
                            width: 354,
                            height: 51,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDDFC),
                              borderRadius: BorderRadius.circular(33),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 0, 0, 0),
                              child: TextFormField(
                                controller: textController2,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Date of Occurence',
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
                                keyboardType: TextInputType.datetime,
                                inputFormatters: [textFieldMask2],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 15, 0, 0),
                          child: Container(
                            width: 354,
                            height: 360,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDDFC),
                              borderRadius: BorderRadius.circular(33),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(27, 0, 0, 0),
                              child: TextFormField(
                                controller: textController3,
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
                      padding: EdgeInsetsDirectional.fromSTEB(50, 24, 50, 24),
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
                              final peoplePostsCreateData = {
                                ...createPeoplePostsRecordData(
                                  text: textController3!.text,
                                  date: textController2!.text,
                                  personId: widget.person!.reference,
                                  aggressive: widget.agg,
                                  reflects: widget.reflect,
                                  approachable: widget.approach,
                                  witnessedHarassing: widget.witness,
                                  facedHarassment: widget.faced,
                                  position: textController1!.text,
                                ),
                                'datePosted': FieldValue.serverTimestamp(),
                              };
                              var peoplePostsRecordReference =
                                  PeoplePostsRecord.collection.doc();
                              await peoplePostsRecordReference
                                  .set(peoplePostsCreateData);
                              post = PeoplePostsRecord.getDocumentFromData(
                                  peoplePostsCreateData,
                                  peoplePostsRecordReference);

                              context.goNamed(
                                'review_suck',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 400),
                                  ),
                                },
                              );

                              setState(() {});
                            },
                            text: 'Submit Review',
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
