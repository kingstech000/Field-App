import 'package:flutter/material.dart';
import 'package:interview/custom_widgets/card.dart';
import 'package:interview/utilities/app_config.dart';
import 'package:interview/utilities/app_styles.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

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
                horizontal: deviceWidth(context) * 0.06,
                vertical: deviceHeight(context) * 0.03),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Field Agent",
                      style: TextStyle(
                        fontSize: deviceWidth(context) * 0.055,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: iconRedColor.withOpacity(0.05),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_none_rounded,
                              color: iconRedColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceWidth(context) * 0.02,
                        ),
                        CircleAvatar(
                          backgroundColor: iconRedColor.withOpacity(0.05),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: iconRedColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: deviceWidth(context) * 0.1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          color: const Color(0xfff3f2fd),
                          text: "  Cash\nDeposit",
                          child: Image.asset('images/coins.png'),
                        ),
                        CustomCard(
                          color: const Color(0xffffebee),
                          text: "    Cash\nWithdrawal",
                          child: Image.asset('images/table.png'),
                        ),
                        CustomCard(
                          color: const Color(0xfffffde7),
                          text: "Create new\n Customer",
                          child: Image.asset('images/filled.png'),
                        ),
                        CustomCard(
                          color: const Color(0xfff3e5f5),
                          text: " User\nProfile",
                          child: Image.asset('images/chart.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceWidth(context) * 0.08,
                    ),
                    CustomCard(
                      color: const Color.fromARGB(255, 245, 236, 239),
                      text: "Approval\n Status",
                      child: Image.asset('images/mdi.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth(context) * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Trasactions",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'NunitoSans',
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: greyColor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text("see all"),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: deviceWidth(context) * 0.03,
                ),
                SizedBox(
                  height: 400,
                  width: deviceWidth(context),
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text(
                            "Withdrawal",
                            style: TextStyle(fontFamily: 'NunitoSans', fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            "GTBank/chrisnwabuokei/0569946101",
                            style: TextStyle(
                              fontSize: 12,
                              color: greyTextColor,
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Text(
                                "₦35,000.00",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: darkBlackColor,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "24-Feb-2024",
                                style: TextStyle(color: lightGreyColor),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
