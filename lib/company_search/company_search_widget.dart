import '../backend/backend.dart';
import '../components/company_search_card_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class CompanySearchWidget extends StatefulWidget {
  const CompanySearchWidget({Key? key}) : super(key: key);

  @override
  _CompanySearchWidgetState createState() => _CompanySearchWidgetState();
}

class _CompanySearchWidgetState extends State<CompanySearchWidget> {
  List<CompaniesRecord> simpleSearchResults = [];
  TextEditingController? textController;
  final _globalKey = GlobalKey();
  final _focusNode = FocusNode();
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (textController!.text == '')
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: Text(
                      'Enter Company To Get Started',
                      textAlign: TextAlign.center,
                      
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Avenir',
                            color: Color(0xFFFBFBFB),
                            fontSize: 60,
                            
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
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
                        focusNode: _focusNode,
                        key: _globalKey,
                        controller: textController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController',
                          Duration(milliseconds: 0),
                          () async {
                            await queryCompaniesRecordOnce()
                                .then(
                                  (records) => simpleSearchResults = TextSearch(
                                    records
                                        .map(
                                          (record) => TextSearchItem(
                                              record, [record.name!]),
                                        )
                                        .toList(),
                                  )
                                      .search(textController!.text)
                                      .map((r) => r.object)
                                      .toList(),
                                )
                                .onError((_, __) => simpleSearchResults = [])
                                .whenComplete(() => setState(() {}));
                          },
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Search for companies...',
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
                        style: FlutterFlowTheme.of(context).bodyText1.override(
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
                if (textController!.text != '')
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(42, 0, 42, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE2B9FF),
                        borderRadius: BorderRadius.circular(33),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Builder(
                                  builder: (context) {
                                    final companies =
                                        simpleSearchResults.toList();
                                    return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child:  ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: companies.length,
                                      itemBuilder: (context, companiesIndex) {
                                        final companiesItem =
                                            companies[companiesIndex];
                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: InkWell(
                                            onTap: () async {
                                              context.pushNamed(
                                                'CompanyReview',
                                                queryParams: {
                                                  'company': serializeParam(
                                                    companiesItem,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'company': companiesItem,
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 400),
                                                  ),
                                                },
                                              );
                                            },
                                            child: CompanySearchCardWidget(
                                              company: companiesItem,
                                              onSelect: () async => context.pushNamed(
                                                'CompanyReview',
                                                queryParams: {
                                                  'company': serializeParam(
                                                    companiesItem,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'company': companiesItem,
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 400),
                                                  ),
                                                },
                                              ),
                                            ),
                                          ),
                                        );
                                      
                                  },
                                ),
                              ),
                              Visibility(visible: companies.length > 0, child: Divider(
                                thickness: 2,
                                color: Color(0xFF58197E),
                              ),),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                child: GestureDetector(
                                  onTap: () async {
                                    context.pushNamed(
                                      'NewCompanyReview',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.topToBottom,
                                          duration: Duration(milliseconds: 400),
                                        ),
                                      },
                                    );
                                  },
                                  child: Text('Add a New Company', style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF58197E),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),),
                                 
                                    
                                   
                                  ),
                                ),
                            ],
                          );},
                          
                        ),
                      ),
                    ),
                    ),  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
