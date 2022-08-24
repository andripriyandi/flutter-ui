import 'package:component/theme/theme.dart';
import 'package:flutter/material.dart';

class HospitalTypeItem extends StatelessWidget {
  final bool isActive;
  final String title;
  final Function() onTap;
  const HospitalTypeItem({
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
          color: kCyanColor,
        ),
        child: Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: fontSizeSmall,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget itemNonActive() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
        // margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kWhiteColor,
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
