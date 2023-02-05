import '../backend/backend.dart';
import '../components/company_search_card_widget.dart';
import '../components/styled_text_field_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
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
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        setState(() {
          _isKeyboardVisible = visible;
        });
      });
    }
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
                if ((isWeb
                        ? MediaQuery.of(context).viewInsets.bottom > 0
                        : _isKeyboardVisible) ==
                    false)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: Text(
                      'Enter Company To Get Started',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Avenir',
                            color: Color(0xFFFBFBFB),
                            fontSize: 80,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 84, 50, 0),
                  child: StyledTextFieldWidget(
                    hintText: 'Search companies...',
                    onChanged: () async {
                      await queryCompaniesRecordOnce()
                          .then(
                            (records) => simpleSearchResults = TextSearch(
                              records
                                  .map(
                                    (record) =>
                                        TextSearchItem(record, [record.name!]),
                                  )
                                  .toList(),
                            )
                                .search(FFAppState().companySearch)
                                .map((r) => r.object)
                                .toList(),
                          )
                          .onError((_, __) => simpleSearchResults = [])
                          .whenComplete(() => setState(() {}));
                    },
                  ),
                ),
                if ((isWeb
                        ? MediaQuery.of(context).viewInsets.bottom > 0
                        : _isKeyboardVisible) ==
                    true)
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Builder(
                                  builder: (context) {
                                    final companies =
                                        simpleSearchResults.toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: companies.length,
                                      itemBuilder: (context, companiesIndex) {
                                        final companiesItem =
                                            companies[companiesIndex];
                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: CompanySearchCardWidget(
                                            company: companiesItem,
                                            onSelect: () async {},
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Add a New Company',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    color: Color(0x004B39EF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF58197E),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
