import '/componentes/barra_lateral/barra_lateral_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'info_uni_widget.dart' show InfoUniWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoUniModel extends FlutterFlowModel<InfoUniWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BarraLateral component.
  late BarraLateralModel barraLateralModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    barraLateralModel = createModel(context, () => BarraLateralModel());
  }

  void dispose() {
    barraLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
