import 'package:flutter/material.dart';

enum VerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final current_state = VerificationState.SHOW_MOBILE_FORM_STATE;

  getMobileFormWidget(context) {
    return Column(children: [
      Spacer(),
      TextField(
        decoration: InputDecoration(
          hintText: "Phone Number",
        ),
      ),
      SizedBox(
        height: 16,
      ),
      TextButton(
        onPressed: (){},
        child: Text("Verify"),
      ),
      Spacer(),
    ]);
  }

  getOtpFormWidget(context) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: current_state == VerificationState.SHOW_MOBILE_FORM_STATE
            ? getMobileFormWidget(context)
            : getOtpFormWidget(context),
          padding: const EdgeInsets.all(16), 
        ));
  }
}
