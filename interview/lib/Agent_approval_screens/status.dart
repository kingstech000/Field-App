import 'package:flutter/material.dart';
import 'package:interview/custom_widgets/custom_tabview.dart';
import 'package:interview/utilities/app_config.dart';
import 'package:interview/utilities/app_styles.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> with TickerProviderStateMixin {
  late TabController tabController;
  Color indicatorColor = Colors.green;
  String status = "Approved";
  Color statusColor = Colors.green;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(handleTabSelection);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void handleTabSelection() {
    setState(() {
      switch (tabController.index) {
        case 0:
          indicatorColor = Colors.green;
          break;
        case 1:
          indicatorColor = Colors.orange;

          break;
        case 2:
          indicatorColor = Colors.red;
          break;
      }
    });
  }

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
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                    SizedBox(
                      width: deviceWidth(context) * 0.27,
                    ),
                    Text(
                      "Status",
                      style: TextStyle(
                        fontSize: deviceWidth(context) * 0.055,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 800,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 30, 
                        child: Row(
                          children: [
                            Expanded(
                              child: TabBar(
                                
                                tabAlignment: TabAlignment.fill,
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                controller: tabController,
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: familyfont,
                                    fontWeight: FontWeight.w600),
                                unselectedLabelColor: Colors.black.withOpacity(0.45),
                                indicatorColor: indicatorColor,
                                labelColor: Colors.black,
                                
                                tabs: const [
                                  Tab(text: "Approved"),
                                  Tab(text: "Pending"),
                                  Tab(text: "Declined"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: const [
                            CustomTabView(
                              statusText: "Approved",
                              statusColor: Colors.green,
                              count: 15,
                            ),
                            CustomTabView(
                              statusText: "Awaiting approval",
                              statusColor: Colors.orange,
                              count: 4,
                            ),
                            CustomTabView(
                              statusText: "Declined",
                              statusColor: Colors.red,
                              count: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
