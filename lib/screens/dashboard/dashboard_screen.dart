import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive.dart';
import 'package:flutter_responsive/screens/dashboard/components/my_fields.dart';

import '../../constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade50,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              child: Header(),
            ),
            Expanded(
              child: SingleChildScrollView(
                primary: false,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              MyFiles(),
                              SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
