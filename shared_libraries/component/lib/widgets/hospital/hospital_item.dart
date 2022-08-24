import 'package:component/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:resources/constant/string_constant.dart';

class HospitalItem extends StatelessWidget {
  const HospitalItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget itemInfo(String pathImage, String title, bool isBold) {
      return Row(
        children: [
          Image.asset(
            pathImage,
            width: 12,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: greyTextStyle.copyWith(
              fontSize: fontSizeSmall,
              fontWeight: isBold ? bold : light,
            ),
          )
        ],
      );
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kWhiteColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(190, 190, 190, 0.16),
            blurRadius: 24,
            offset: Offset(0, 16),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: defaultMargin,
                bottom: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                    style: primaryTextStyle.copyWith(
                      fontSize: fontSizeDefault,
                      fontWeight: bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                    child: Text(
                      'Rp. 1.400.000',
                      style: orangeTextStyle.copyWith(
                        fontSize: fontSizeDefault,
                        fontWeight: semibold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: itemInfo(
                      '${StringConstant.pathIcon}ic_hospital.png',
                      'Lenmarc Surabaya',
                      true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: itemInfo(
                      '${StringConstant.pathIcon}ic_marker.png',
                      'Dukuh Pakis, Surabaya',
                      false,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              '${StringConstant.pathImage}im_sample_hospital.png',
              width: 120,
            ),
          )
        ],
      ),
    );
  }
}
