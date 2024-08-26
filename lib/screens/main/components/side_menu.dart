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
  bool isActive = false;

  void _onMenuItemPressed(int index) {
    setState(() {
      menuController.changeIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
      ),
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Image.asset("assets/images/logo.png"),
          ),
          Divider(
            color: Colors.grey.shade200,
          ),

// Index 0
          DrawerListTile(
            title: "ទំព័រដើម",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () => _onMenuItemPressed(0),
            isActive: menuController.selectedIndex == 0,
          ),
          SizedBox(
            height: 10,
          ),
          // =========== MARK: LIST លំហូរឯកសារ
          DrawerListTile(
            title: "លំហូរឯកសារ",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              setState(() {
                isDropDown = !isDropDown;
              });
            },
            iconTraling: Icon(
              color: Colors.red,
              isDropDown
                  ? Icons.arrow_upward_rounded
                  : Icons.arrow_downward_rounded,
            ),
            isActive: menuController.selectedIndex == 1 ||
                menuController.selectedIndex == 2 ||
                menuController.selectedIndex == 3 ||
                menuController.selectedIndex == 4 ||
                menuController.selectedIndex == 5 ||
                menuController.selectedIndex == 6 ||
                menuController.selectedIndex == 7 ||
                menuController.selectedIndex == 8,
          ),
          if (isDropDown) ...[
            SizedBox(height: 10),
            // Index 1
            DrawerListTile(
              Leading: 10,
              isIconLeading: false,
              title: "រង់ចាំ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(1),
              isActive: menuController.selectedIndex == 1,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),
            SizedBox(height: 10),
            // Index 2
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "ដំណើរការ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(2),
              isActive: menuController.selectedIndex == 2,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),

            SizedBox(height: 10),
            // Index 3
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "មិនឯកភាព",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(3),
              isActive: menuController.selectedIndex == 3,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),
            SizedBox(height: 10),
            // Index 4
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "ឯកភាព",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(4),
              isActive: menuController.selectedIndex == 4,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),
            SizedBox(height: 10),
            // Index 5
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "មុខការ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(5),
              isActive: menuController.selectedIndex == 5,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),
            SizedBox(height: 10),
            // Index 6
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "ចែករំលែកលំហូរមកខ្មុំ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(6),
              isActive: menuController.selectedIndex == 6,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),
            SizedBox(height: 10),
            // Index 7
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "កំណត់ត្រាឯកសារ",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(7),
              isActive: menuController.selectedIndex == 7,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),
            SizedBox(height: 10),
            // Index 8
            DrawerListTile(
              isIconLeading: false,
              Leading: 10,
              title: "លំហូរដែលបានលុប",
              svgSrc: "assets/icons/menu_task.svg",
              press: () => _onMenuItemPressed(8),
              isActive: menuController.selectedIndex == 8,
              isSubMenu: true,
              iconTraling: Icon(
                color: Colors.red,
                Icons.arrow_forward,
              ),
            ),
          ],
          // =========== MARK: END LIST លំហូរឯកសារ
          SizedBox(height: 10),
// Index 9
          DrawerListTile(
            title: "ឯកសារគម្រូ",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () => _onMenuItemPressed(9),
            isActive: menuController.selectedIndex == 9,
          ),

          SizedBox(height: 10),
// Index 10
          DrawerListTile(
            title: "រចនាសម្ព័ន្ធក្រសួង",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () => _onMenuItemPressed(10),
            isActive: menuController.selectedIndex == 10,
          ),

          SizedBox(height: 10),
// Index 11
          DrawerListTile(
            title: "មតិយេាបល់របស់អ្នកប្រេីប្រាស់",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () => _onMenuItemPressed(11),
            isActive: menuController.selectedIndex == 11,
          ),
          SizedBox(height: 10),
// Index 12
          DrawerListTile(
            title: "រចនាសម្ព័ន្ធក្រសួង",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () => _onMenuItemPressed(12),
            isActive: menuController.selectedIndex == 12,
          ),
          SizedBox(height: 10),
// Index 13
          DrawerListTile(
            title: "កំណត់ប្រព័ន្ធ",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () => _onMenuItemPressed(13),
            isActive: menuController.selectedIndex == 13,
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatefulWidget {
  DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    this.iconTraling,
    this.isIconLeading = true,
    this.Leading = 0,
    this.isActive = false,
    this.isSubMenu = false,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final bool isIconLeading;
  final Icon? iconTraling;
  final double Leading;
  final bool isActive;
  final bool isSubMenu;

  @override
  State<DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      splashColor: Colors.blueGrey.shade200,
      hoverColor: Colors.blueGrey.shade50,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.isActive
                ? (widget.isSubMenu ? Colors.blue[100] : Colors.blue[900])
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            if (widget.isIconLeading)
              SvgPicture.asset(
                widget.svgSrc ?? '',
                colorFilter: ColorFilter.mode(
                  Colors.blueGrey.shade400,
                  BlendMode.srcIn,
                ),
                height: 16,
              ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (widget.iconTraling != null) ...[
              SizedBox(width: 10),
              widget.iconTraling ?? Container()
            ]
          ],
        ),
      ),
    );
  }
}
