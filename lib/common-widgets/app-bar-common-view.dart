import 'package:dem/common/color-extension.dart';
import 'package:flutter/material.dart';

class AppBarCommonView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCommonView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: TextButton(
        onPressed: () {},
        child: Icon(Icons.more_vert, size: 30,
         color: Tcolor.primary),
      ),
      titleSpacing: 100


      ,
      title: Text(
        "Jipool",
        style: TextStyle(
          color: Tcolor.primary,
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
      ),
      actions: [
        Stack(
          alignment: Alignment.topRight,

          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.notifications_outlined,
                size: 35,
                
                color: Tcolor.primary,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, right: 22),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Tcolor.notificationActive,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ],

      backgroundColor: Tcolor.appBarbg,
      shadowColor: Tcolor.appBarbg,
      elevation: 15,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
