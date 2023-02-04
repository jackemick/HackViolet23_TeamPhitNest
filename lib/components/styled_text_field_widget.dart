import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledTextFieldWidget extends StatefulWidget {
  const StyledTextFieldWidget({
    Key? key,
    this.hintText,
  }) : super(key: key);

  final String? hintText;

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
          autofocus: true,
          textCapitalization: TextCapitalization.words,
          obscureText: false,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: 'Adamina',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
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
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Adamina',
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 18,
                fontWeight: FontWeight.normal,
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
