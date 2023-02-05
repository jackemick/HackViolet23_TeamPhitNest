import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StyledTextFieldWidget extends StatefulWidget {
  const StyledTextFieldWidget({
    Key? key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  final String? hintText;
  final Future<dynamic> Function()? onChanged;

  @override
  _StyledTextFieldWidgetState createState() => _StyledTextFieldWidgetState();
}

class _StyledTextFieldWidgetState extends State<StyledTextFieldWidget> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFAFAFA), Color(0x93D7A1FF)],
          stops: [0, 1],
          begin: AlignmentDirectional(0, -1),
          end: AlignmentDirectional(0, 1),
        ),
        borderRadius: BorderRadius.circular(33),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        child: TextFormField(
          controller: textController,
          onChanged: (_) => EasyDebounce.debounce(
            'textController',
            Duration(milliseconds: 200),
            () async {
              FFAppState().update(() {
                FFAppState().companySearch = textController!.text;
              });
              await widget.onChanged?.call();
            },
          ),
          textCapitalization: TextCapitalization.words,
          obscureText: false,
          decoration: InputDecoration(
            isDense: true,
            hintText: widget.hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(33),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(33),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(33),
            ),
            focusedErrorBorder: OutlineInputBorder(
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
              size: 24,
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
          keyboardType: TextInputType.name,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
          ],
        ),
      ),
    );
  }
}
