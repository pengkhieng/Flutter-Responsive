import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/controllers/menu_app_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final MenuAppController menuController = Get.find();
  bool isDropDown = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Image.asset("assets/images/logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Colors.grey.shade200,
            ),
          ),
// Index 0
          DrawerListTile(
            title: "ទំព័រដើម",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () => menuController.changeIndex(0),
          ),
          // =========== MARK: -> LIST លំហូរឯកសារ
          DrawerListTile(
            title: "លំហូរឯកសារ",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              setState(() {
                isDropDown = !isDropDown;
              });
            },
            iconTraling: Icon(
              isDropDown
                  ? Icons.arrow_upward_rounded
                  : Icons.arrow_downward_rounded,
            ),
          ),
          if (isDropDown) ...[
            // Index 1
            DrawerListTile(
              Leading: 10,
              isIconLeading: false,
              title: "រង់ចាំ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(1),
            ),
            // Index 2
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "ដំណើរការ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(2),
            ),
            // Index 3
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "មិនឯកភាព",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(3),
            ),
            // Index 4
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "ឯកភាព",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(4),
            ),
            // Index 5
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "មុខការ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(5),
            ),
            // No 7
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "ចែករំលែកលំហូរមកខ្មុំ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(6),
            ),
            // No 8
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "កំណត់ត្រាឯកសារ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(7),
            ),
            // No 2
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "លំហូរដែលបានលុប",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => menuController.changeIndex(8),
            ),
          ],
          // =========== MARK END: -> LIST លំហូរឯកសារ
// No 9
          DrawerListTile(
            title: "ឯកសារគម្រូ",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () => menuController.changeIndex(9),
          ),

// No 10
          DrawerListTile(
            title: "រចនាសម្ព័ន្ធក្រសួង",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () => menuController.changeIndex(10),
          ),

// No 11
          DrawerListTile(
            title: "មតិយេាបល់របស់អ្នកប្រេីប្រាស់",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () => menuController.changeIndex(11),
          ),
// No 12
          DrawerListTile(
            title: "រចនាសម្ព័ន្ធក្រសួង",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () => menuController.changeIndex(12),
          ),
// No 13
          DrawerListTile(
            title: "កំណត់ប្រព័ន្ធ",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () => menuController.changeIndex(13),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    this.iconTraling,
    this.isIconLeading = true,
    this.Leading = 0,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final bool isIconLeading;
  final Icon? iconTraling;
  final double Leading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        color: Colors.transparent,
        child: Row(
          children: [
            SizedBox(
              width: Leading,
            ),
            if (isIconLeading) ...[
              SvgPicture.asset(
                svgSrc,
                colorFilter:
                    ColorFilter.mode(Colors.blueGrey.shade400, BlendMode.srcIn),
                height: 16,
              ),
              SizedBox(
                width: 10,
              )
            ],
            Expanded(
              child: Text(
                title,
                style: TextStyle(color: Colors.blueGrey.shade400),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (iconTraling != null)
              Container(
                color: Colors.red,
                child: iconTraling,
              )
          ],
        ),
      ),
    );
  }
}
