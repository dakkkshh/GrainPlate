import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grainplate/components/otp_input.dart';
import 'package:grainplate/components/rounded_button.dart';
import 'package:grainplate/components/rounded_input_field.dart';
import 'package:grainplate/views/generate_otp/components/background.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final phoneController = TextEditingController();
  final OTPController = TextEditingController();

  bool OTP_generated = false;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text(
          //   "Welcome to GrainPlate",
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          SvgPicture.asset(
            "asset/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedInputField(
              hintText: "Your Phone Number",
              onChanged: (value) {
                phoneController.text = value;
              },
          ),
          RoundedOTPField(
              hintText: "OTP",
              onChanged: (value) {
                OTPController.text = value;
              },
          ),
          RoundedButton(
              text: OTP_generated ? "SUBMIT" : "GENERATE OTP",
              press: () {
                if (OTP_generated) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("OTP Submitted"),
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("OTP Generated"),
                  ));
                  setState(() {
                    OTP_generated = true;
                  });
                }
              }),
        ],
      ),
    );
  }
}
