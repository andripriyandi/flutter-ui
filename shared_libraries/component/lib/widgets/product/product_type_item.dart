import 'package:component/theme/theme.dart';
import 'package:flutter/material.dart';

class ProductTypeItem extends StatelessWidget {
  final bool isActive;
  final String title;
  final Function() onTap;
  const ProductTypeItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget itemActive() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kPrimaryColor,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 32, 96, 0.24),
              blurRadius: 24,
              offset: Offset(0, 16),
            )
          ],
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: fontSizeSmall,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget itemNonActive() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kWhiteColor,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(190, 190, 190, 0.16),
              blurRadius: 24,
              offset: Offset(0, 16),
            )
          ],
        ),
        child: Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: fontSizeSmall,
            fontWeight: medium,
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: isActive ? itemActive() : itemNonActive(),
    );
  }
}
