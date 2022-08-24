import 'package:component/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:resources/constant/string_constant.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${StringConstant.pathImage}im_banner.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Ingin mendapat update\n dari kami ?',
              style: whiteTextStyle.copyWith(
                fontSize: fontSizeLarge,
                fontWeight: bold,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'Dapatkan\n Notifikasi',
                style: whiteTextStyle.copyWith(
                  fontSize: fontSizeExtraSmall,
                  fontWeight: light,
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Image.asset(
                '${StringConstant.pathIcon}ic_arrow_right.png',
                color: kWhiteColor,
                width: 24,
              )
            ],
          )
        ],
      ),
    );
  }
}
