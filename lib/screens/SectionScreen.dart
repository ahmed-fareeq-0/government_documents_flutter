import 'package:flutter/material.dart';

class SectionScreen extends StatelessWidget {
  var eeee = [
    "الأدارة",
    "القانونية",
    "الذاتية",
    "المحاسبة",
    "البصمة",
  ];
  var icons = [
    Icons.admin_panel_settings,
    Icons.balance,
    Icons.subject,
    Icons.account_balance,
    Icons.fingerprint,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 2.7)),
        itemCount: eeee.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              onTap: () {},
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Icon(
                  icons[index],
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    eeee[index],
                    style: TextStyle(
                        fontSize: 20, height: 1.2, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
