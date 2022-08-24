import 'package:component/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:resources/constant/string_constant.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 24),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(190, 190, 190, 0.16),
            blurRadius: 24,
            offset: Offset(0, 16),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.star,
                color: kYellowColor,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                '5',
                style: greyLightTextStyle.copyWith(
                  fontSize: fontSizeLarge,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          Center(
            child: Image.asset(
              '${StringConstant.pathImage}im_sample_micro.png',
              width: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'Suntik Steril',
              style: primaryTextStyle.copyWith(
                fontSize: fontSizeDefault,
                fontWeight: medium,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp. 10.000',
                  style: orangeTextStyle.copyWith(
                    fontSize: fontSizeSmall,
                    fontWeight: medium,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: kGreenLightColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Ready Stock',
                    style: greenTextStyle.copyWith(
                      fontSize: fontSizeExtraSmall,
                      fontWeight: medium,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
