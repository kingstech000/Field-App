import 'package:flutter/material.dart';
import 'package:interview/utilities/app_config.dart';
import 'package:interview/utilities/app_styles.dart';

class CustomTabView extends StatelessWidget {
  const CustomTabView(
      {super.key, required this.statusText, required this.statusColor, required this.count});

  final String statusText;
  final Color statusColor;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: deviceWidth(context) * 0.04,
          horizontal: deviceWidth(context) * 0.03),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: deviceWidth(context) * 0.8,
                height: deviceWidth(context) * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    width: 1,
                    color: greyTextColor.withOpacity(0.5),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(left: 10),
                      child: Image.asset('images/search.png'),
                    ),
                    SizedBox(
                      width: deviceWidth(context) * 0.6,
                      child: TextField(
                        onChanged: (value) {},
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 600,
            child: ListView.builder(
                itemCount: count,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                            width: 1, color: greyTextColor.withOpacity(0.2),),
                      ),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5),
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: greyTextColor.withOpacity(0.5),
                            ),
                            shape: BoxShape.circle),
                        child: Image.asset('images/bank.png'),
                      ),
                      title: const Text(
                        "Cash Withdrawal",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Text(
                        "CTRANS-473875889983",
                        style: TextStyle(fontSize: 12, color: greyTextColor),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "₦25,000.00",
                            style: TextStyle(
                                fontSize: 15,
                                color: darkBlackColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            statusText,
                            style: TextStyle(
                              color: statusColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
