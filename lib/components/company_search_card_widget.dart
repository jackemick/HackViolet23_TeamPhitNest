import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompanySearchCardWidget extends StatefulWidget {
  const CompanySearchCardWidget({
    Key? key,
    this.onSelect,
    this.company,
  }) : super(key: key);

  final Future<dynamic> Function()? onSelect;
  final CompaniesRecord? company;

  @override
  _CompanySearchCardWidgetState createState() =>
      _CompanySearchCardWidgetState();
}

class _CompanySearchCardWidgetState extends State<CompanySearchCardWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      onTap: () async {
        await widget.onSelect?.call();
      },
      child: Container(
        width: double.infinity,
        height: 60,
        constraints: BoxConstraints(
          maxHeight: 60,
        ),
        decoration: BoxDecoration(
          color: Color(0x00FFFFFF),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
              child: Icon(
                Icons.search_sharp,
                color: Colors.white,
                size: 28,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.company!.name!,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Avenir',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        useGoogleFonts: false,
                      ),
                ),
                Text(
                  widget.company!.city!,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
