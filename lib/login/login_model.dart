import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Conf_pass widget.
  FocusNode? confPassFocusNode;
  TextEditingController? confPassTextController;
  late bool confPassVisibility;
  String? Function(BuildContext, String?)? confPassTextControllerValidator;
  String? _confPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for login-email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  String? _loginEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for login-pass widget.
  FocusNode? loginPassFocusNode;
  TextEditingController? loginPassTextController;
  late bool loginPassVisibility;
  String? Function(BuildContext, String?)? loginPassTextControllerValidator;
  String? _loginPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    confPassVisibility = false;
    confPassTextControllerValidator = _confPassTextControllerValidator;
    loginEmailTextControllerValidator = _loginEmailTextControllerValidator;
    loginPassVisibility = false;
    loginPassTextControllerValidator = _loginPassTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confPassFocusNode?.dispose();
    confPassTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginPassFocusNode?.dispose();
    loginPassTextController?.dispose();
  }
}
