import 'package:component/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:resources/constant/string_constant.dart';

class AppBarPrimary extends StatelessWidget with PreferredSizeWidget {
  final Function()? onTapDrawer;
  final Function()? onTapCart;
  final Function()? onTapNotification;

  const AppBarPrimary({
    Key? key,
    this.onTapDrawer,
    this.onTapCart,
    this.onTapNotification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kWhiteColor,
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      elevation: 0,
      title: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTapDrawer,
              child: Image.asset(
                '${StringConstant.pathIcon}ic_drawer.png',
                width: 22,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: onTapCart,
              child: Image.asset(
                '${StringConstant.pathIcon}ic_cart.png',
                width: 18,
              ),
            ),
            const SizedBox(
              width: 33,
            ),
            GestureDetector(
              onTap: onTapNotification,
              child: Image.asset(
                '${StringConstant.pathIcon}ic_notification.png',
                width: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight);
}
