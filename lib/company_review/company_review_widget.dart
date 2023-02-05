import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class CompanyReviewWidget extends StatefulWidget {
  const CompanyReviewWidget({
    Key? key,
    this.company,
  }) : super(key: key);

  final CompaniesRecord? company;

  @override
  _CompanyReviewWidgetState createState() => _CompanyReviewWidgetState();
}

class _CompanyReviewWidgetState extends State<CompanyReviewWidget> {
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
      body: SafeArea(
        child: GestureDetector(
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
            child: Stack(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Text(
                              'View Reviews',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Avenir Reg',
                                    color: Color(0xFF58197E),
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF58197E),
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 80, 20, 28),
                      child: InkWell(
                        onTap: () async {
                          context.pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFAFAFA), Color(0x93D7A1FF)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(0, -1),
                              end: AlignmentDirectional(0, 1),
                            ),
                            borderRadius: BorderRadius.circular(33),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: TextFormField(
                              controller: textController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '[Some hint text...]',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(33),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(33),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(33),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(33),
                                ),
                                filled: true,
                                fillColor: Color(0xFFEFDDFC),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Avenir',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 40),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 2, 0),
                            child: Container(
                              width: 190,
                              height: 62,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text(
                                widget.company!.name!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Reg',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 35,
                                      fontStyle: FontStyle.italic,
                                      useGoogleFonts: false,
                                      lineHeight: 0.842,
                                    ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'NewCompanyReview',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.topToBottom,
                                        ),
                                      },
                                    );
                                  },
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
                                        textAlign: TextAlign.center,
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'FindEmployees',
                                      queryParams: {
                                        'company': serializeParam(
                                          widget.company,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'company': widget.company,
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                        ),
                                      },
                                    );
                                  },
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
                                        'Find Employees',
                                        textAlign: TextAlign.center,
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
                            ],
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<List<CompanyPostsRecord>>(
                      stream: queryCompanyPostsRecord(
                        queryBuilder: (companyPostsRecord) =>
                            companyPostsRecord.where('companyId',
                                isEqualTo: widget.company!.reference),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<CompanyPostsRecord>
                            containerCompanyPostsRecordList = snapshot.data!;
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.55, 0),
                                          child: Text(
                                            'Male Dominated',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    59, 0, 0, 0),
                                            child: LinearPercentIndicator(
                                              percent: 0.5,
                                              width: 272,
                                              lineHeight: 11,
                                              animation: true,
                                              progressColor: Color(0xFFCD88FE),
                                              backgroundColor:
                                                  Color(0xFFE2B9FF),
                                              barRadius: Radius.circular(12),
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.67, 0),
                                          child: Text(
                                            formatNumber(
                                              containerCompanyPostsRecordList
                                                  .length,
                                              formatType: FormatType.custom,
                                              format:
                                                  '\${() {int count = 0; for (int i = 0; i < containerCompanyPostsRecordList.length; i++){ if(containerCompanyPostsRecordList[i].maleDominated) {count++;}}return count / containerCompanyPostsRecordList.length;}()}',
                                              locale: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.55, 0),
                                          child: Text(
                                            'LGBTQ+ Friendly',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.9, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    59, 0, 59, 0),
                                            child: LinearPercentIndicator(
                                              percent: 0.5,
                                              width: 272,
                                              lineHeight: 11,
                                              animation: true,
                                              progressColor: Color(0xFFCD88FE),
                                              backgroundColor:
                                                  Color(0xFFE2B9FF),
                                              barRadius: Radius.circular(12),
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.67, 0),
                                          child: Text(
                                            formatNumber(
                                              containerCompanyPostsRecordList
                                                  .length,
                                              formatType: FormatType.custom,
                                              format:
                                                  '\${() {int count = 0; for (int i = 0; i < containerCompanyPostsRecordList.length; i++){if(containerCompanyPostsRecordList[i].lgbtqFriendly) {count++;}}return count / containerCompanyPostsRecordList.length;}()}',
                                              locale: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.55, 0),
                                          child: Text(
                                            'Safe Environment',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    59, 0, 0, 0),
                                            child: LinearPercentIndicator(
                                              percent: 0.5,
                                              width: 272,
                                              lineHeight: 11,
                                              animation: true,
                                              progressColor: Color(0xFFCD88FE),
                                              backgroundColor:
                                                  Color(0xFFE2B9FF),
                                              barRadius: Radius.circular(12),
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.67, 0),
                                          child: Text(
                                            formatNumber(
                                              containerCompanyPostsRecordList
                                                  .length,
                                              formatType: FormatType.custom,
                                              format:
                                                  '\${() {int count = 0; for (int i = 0; i < containerCompanyPostsRecordList.length; i++){if(containerCompanyPostsRecordList[i].safeEnvironment) {count++;}}return count / containerCompanyPostsRecordList.length;}()}',
                                              locale: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.48, 0),
                                          child: Text(
                                            'Witnessed Harassment',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    59, 0, 0, 0),
                                            child: LinearPercentIndicator(
                                              percent: 0.5,
                                              width: 272,
                                              lineHeight: 11,
                                              animation: true,
                                              progressColor: Color(0xFFCD88FE),
                                              backgroundColor:
                                                  Color(0xFFE2B9FF),
                                              barRadius: Radius.circular(12),
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.67, 0),
                                          child: Text(
                                            formatNumber(
                                              containerCompanyPostsRecordList
                                                  .length,
                                              formatType: FormatType.custom,
                                              format:
                                                  '\${() {int count = 0; for (int i = 0; i < containerCompanyPostsRecordList.length; i++){if(containerCompanyPostsRecordList[i].witnessHarassment) {count++;}}return count / containerCompanyPostsRecordList.length;}()}',
                                              locale: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.54, 0),
                                          child: Text(
                                            'Faced Harassment',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    59, 0, 0, 0),
                                            child: LinearPercentIndicator(
                                              percent: 0.5,
                                              width: 272,
                                              lineHeight: 11,
                                              animation: true,
                                              progressColor: Color(0xFFCD88FE),
                                              backgroundColor:
                                                  Color(0xFFE2B9FF),
                                              barRadius: Radius.circular(12),
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.67, 0),
                                          child: Text(
                                            formatNumber(
                                              containerCompanyPostsRecordList
                                                  .length,
                                              formatType: FormatType.custom,
                                              format:
                                                  '\${() {int count = 0; for (int i = 0; i < containerCompanyPostsRecordList.length; i++){if(containerCompanyPostsRecordList[i].facedHarassment) {count++;}}return count / containerCompanyPostsRecordList.length;}()}',
                                              locale: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Avenir Reg',
                                                  fontStyle: FontStyle.italic,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: StreamBuilder<List<CompanyPostsRecord>>(
                        stream: queryCompanyPostsRecord(
                          queryBuilder: (companyPostsRecord) =>
                              companyPostsRecord.where('companyId',
                                  isEqualTo: widget.company!.reference),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<CompanyPostsRecord>
                              containerCompanyPostsRecordList = snapshot.data!;
                          return Container(
                            width: 294,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Builder(
                              builder: (context) {
                                final posts =
                                    containerCompanyPostsRecordList.toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(posts.length, (postsIndex) {
                                    final postsItem = posts[postsIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 16, 0, 0),
                                      child: Container(
                                        width: 270,
                                        height: 123,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE9CCFF),
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 8, 0, 8),
                                              child: Container(
                                                width: double.infinity,
                                                height: 76,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(13, 13, 0, 0),
                                                  child: Text(
                                                    postsItem.text!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Avenir Reg',
                                                          color:
                                                              Color(0xFF544D4D),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(13, 0, 8, 0),
                                                  child: Container(
                                                    width: 160,
                                                    height: 19,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1, 0),
                                                      child: Text(
                                                        dateTimeFormat('d/M/y',
                                                            postsItem.date!),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Avenir Reg',
                                                                  color: Color(
                                                                      0xFF58197E),
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
