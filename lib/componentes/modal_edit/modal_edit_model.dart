import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'modal_edit_widget.dart' show ModalEditWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalEditModel extends FlutterFlowModel<ModalEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Documento widget.
  FocusNode? documentoFocusNode;
  TextEditingController? documentoController;
  String? Function(BuildContext, String?)? documentoControllerValidator;
  // State field(s) for Edad widget.
  FocusNode? edadFocusNode;
  TextEditingController? edadController;
  String? Function(BuildContext, String?)? edadControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;
  // State field(s) for pais widget.
  FocusNode? paisFocusNode;
  TextEditingController? paisController;
  String? Function(BuildContext, String?)? paisControllerValidator;
  // State field(s) for provincia widget.
  FocusNode? provinciaFocusNode;
  TextEditingController? provinciaController;
  String? Function(BuildContext, String?)? provinciaControllerValidator;
  // State field(s) for municipio widget.
  FocusNode? municipioFocusNode;
  TextEditingController? municipioController;
  String? Function(BuildContext, String?)? municipioControllerValidator;
  // State field(s) for carrera widget.
  FocusNode? carreraFocusNode;
  TextEditingController? carreraController;
  String? Function(BuildContext, String?)? carreraControllerValidator;
  // State field(s) for semestre widget.
  FocusNode? semestreFocusNode;
  TextEditingController? semestreController;
  String? Function(BuildContext, String?)? semestreControllerValidator;
  // State field(s) for jornada widget.
  FocusNode? jornadaFocusNode;
  TextEditingController? jornadaController;
  String? Function(BuildContext, String?)? jornadaControllerValidator;
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularController;
  String? Function(BuildContext, String?)? celularControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    documentoFocusNode?.dispose();
    documentoController?.dispose();

    edadFocusNode?.dispose();
    edadController?.dispose();

    paisFocusNode?.dispose();
    paisController?.dispose();

    provinciaFocusNode?.dispose();
    provinciaController?.dispose();

    municipioFocusNode?.dispose();
    municipioController?.dispose();

    carreraFocusNode?.dispose();
    carreraController?.dispose();

    semestreFocusNode?.dispose();
    semestreController?.dispose();

    jornadaFocusNode?.dispose();
    jornadaController?.dispose();

    correoFocusNode?.dispose();
    correoController?.dispose();

    celularFocusNode?.dispose();
    celularController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
