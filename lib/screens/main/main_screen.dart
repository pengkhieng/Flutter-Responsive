import 'package:flutter/material.dart';
import 'package:flutter_responsive/controllers/menu_app_controller.dart';
import 'package:flutter_responsive/document_workflow/approved.dart';
import 'package:flutter_responsive/document_workflow/in_progress.dart';
import 'package:flutter_responsive/document_workflow/mentioned.dart';
import 'package:flutter_responsive/document_workflow/padding_screen.dart';
import 'package:flutter_responsive/document_workflow/rejected.dart';
import 'package:flutter_responsive/document_workflow/report.dart';
import 'package:flutter_responsive/document_workflow/share_to_me.dart';
import 'package:flutter_responsive/document_workflow/workflow_deleted.dart';
import 'package:flutter_responsive/responsive.dart';
import 'package:flutter_responsive/screens/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuAppController menuController = Get.find<MenuAppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: menuController.scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            // Expanded(
            //   flex: 4,
            //   child: DashboardScreen(),
            // ),

            Expanded(
              flex: 4,
              child: Obx(() {
                return IndexedStack(
                  index: menuController.selectedIndex.value,
                  children: [
                    DashboardScreen(),
                    PaddingScreen(),
                    InProgress(),
                    Rejected(),
                    Approved(),
                    Mentioned(),
                    ShareToMe(),
                    Report(),
                    WorkflowDeleted(),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
