import 'package:flutter/material.dart';
import 'package:interview/custom_widgets/custom_button.dart';
import 'package:interview/utilities/app_config.dart';
import 'package:interview/utilities/app_styles.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AwaitingApprovalPage extends StatelessWidget {
  const AwaitingApprovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      body: SafeArea(
        child: SizedBox(
          width: deviceWidth(context),
          height: deviceHeight(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth(context) * 0.03,
                  vertical: deviceHeight(context) * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Awaiting Approval",
                        style: TextStyle(
                          fontSize: deviceWidth(context) * 0.04,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.2,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 20,
                        icon: const Icon(
                          Icons.close,
                          color: iconRedColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset("images/pending.png"),
                  ),
                  Text(
                    "Pending Approval",
                    style: TextStyle(
                        color: const Color(0xffEBB100),
                        fontSize: deviceWidth(context) * 0.045,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "₦25,000",
                    style: TextStyle(
                      fontSize: deviceWidth(context) * 0.05,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff01292A),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "March 22, 2024",
                    style: TextStyle(
                      fontSize: deviceWidth(context) * 0.03,
                      color: const Color(0xff6B7280),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Deposit details",
                    style: TextStyle(
                      fontSize: deviceWidth(context) * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Amount",
                                style: TextStyle(
                                  fontSize: deviceWidth(context) * 0.037,
                                  color: const Color(0xff8F8F8F),
                                ),
                              ),
                              Text(
                                "₦25,000",
                                style: TextStyle(
                                    fontSize: deviceWidth(context) * 0.04,
                                    color: iconRedColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Withdrawal fee",
                                style: TextStyle(
                                  fontSize: deviceWidth(context) * 0.037,
                                  color: const Color(0xff8F8F8F),
                                ),
                              ),
                              Text(
                                "₦100",
                                style: TextStyle(
                                    fontSize: deviceWidth(context) * 0.04,
                                    color: iconRedColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Withdrawal name",
                                style: TextStyle(
                                  fontSize: deviceWidth(context) * 0.037,
                                  color: const Color(0xff8F8F8F),
                                ),
                              ),
                              Text(
                                "Kolade Ololade",
                                style: TextStyle(
                                  fontSize: deviceWidth(context) * 0.037,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: familyfont,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Narration",
                                style: TextStyle(
                                  fontSize: deviceWidth(context) * 0.037,
                                  color: const Color(0xff8F8F8F),
                                ),
                              ),
                              Text(
                                "What the money\n is for goes here",
                                style: TextStyle(
                                  fontSize: deviceWidth(context) * 0.033,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: deviceWidth(context) * 0.45,
                  ),
                  Padding(
                    padding: EdgeInsets.all(deviceWidth(context) * 0.13),
                    child: Row(
                      children: [
                        CustomButton(
                          color: backgroundWhite,
                          text: "Decline",
                          borderColor: iconRedColor,
                          textColor: iconRedColor,
                          onpressed: () {},
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        CustomButton(
                          color: const Color(0xff2B9B5B),
                          text: "Accept",
                          borderColor: const Color(0xff2B9B5B),
                          textColor: backgroundWhite,
                          onpressed: () {
                            Alert(
                              style: AlertStyle(
                                titleStyle: const TextStyle(
                                  fontSize: 18
                                ),
                                descStyle: const TextStyle(
                                  fontSize: 15
                                ),
                                overlayColor: Colors.black.withOpacity(0.8)
                              ),
                              image: Image.asset("images/pending.png"),
                              context: context,
                              title: "Awaiting Approval",
                              desc:
                                  "Awaiting superior approval, notification will be sent once approved",
                              buttons: [
                                DialogButton(
                                  color: const Color(0xff2B9B5B),
                                  onPressed: () => Navigator.pop(context),
                                  width: 120,
                                  child: const Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            ).show();
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
