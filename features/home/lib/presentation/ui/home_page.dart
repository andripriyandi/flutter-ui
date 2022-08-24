import 'package:component/theme/theme.dart';
import 'package:component/widgets/widgets.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/cubit/drawer_cubit.dart';
import 'package:home/presentation/cubit/hospital_type_cubit.dart';
import 'package:home/presentation/cubit/product_type_cubit.dart';
import 'package:resources/constant/string_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget information() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(15, 28, 15, 12),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Solusi Kesehatan Anda',
                              style: primaryTextStyle.copyWith(
                                fontSize: fontSizeLarge,
                                fontWeight: bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                'Update informasi seputar kesehatan semua bisa disini !',
                                style: greyTextStyle.copyWith(
                                  fontSize: fontSizeSmall,
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 32, 96, 0.24),
                                      blurRadius: 24,
                                      offset: Offset(0, 16),
                                    )
                                  ],
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 7,
                                ),
                                child: Text(
                                  'Selengapnya',
                                  style: whiteTextStyle.copyWith(
                                      fontSize: fontSizeSmall,
                                      fontWeight: bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 140,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -26,
                  right: 5,
                  child: Image.asset(
                    '${StringConstant.pathImage}im_schedule.png',
                    width: 140,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(15, 28, 15, 12),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Layanan Khusus',
                              style: primaryTextStyle.copyWith(
                                fontSize: fontSizeLarge,
                                fontWeight: bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                'Tes Covid 19, Cegah Corona\nSedini Mungkin',
                                style: greyTextStyle.copyWith(
                                  fontSize: fontSizeSmall,
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 16,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Daftar Tes',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: fontSizeDefault,
                                        fontWeight: bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      '${StringConstant.pathIcon}ic_arrow_right.png',
                                      width: 16,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -26,
                  right: 20,
                  child: Image.asset(
                    '${StringConstant.pathImage}im_medic_covid.png',
                    width: 120,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 12),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(
                  16,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(190, 190, 190, 0.16),
                    blurRadius: 24,
                    offset: Offset(0, 16),
                  )
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -26,
                    left: 0,
                    child: Image.asset(
                      '${StringConstant.pathImage}im_magnifying_glasses.png',
                      width: 120,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 140,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Track Pemeriksaan',
                              style: primaryTextStyle.copyWith(
                                fontSize: fontSizeLarge,
                                fontWeight: bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                'Kamu dapat mengecek progress pemeriksaanmu disini',
                                style: greyTextStyle.copyWith(
                                  fontSize: fontSizeSmall,
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 16,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Track',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: fontSizeDefault,
                                        fontWeight: bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      '${StringConstant.pathIcon}ic_arrow_right.png',
                                      width: 16,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget product() {
      return Container(
        margin: const EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(190, 190, 190, 0.16),
                            blurRadius: 24,
                            offset: Offset(0, 16),
                          )
                        ],
                      ),
                      child: Image.asset(
                        '${StringConstant.pathIcon}ic_filter.png',
                        width: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(30, 0, 22, 0),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                              style: primaryTextStyle.copyWith(
                                fontSize: fontSizeLarge,
                                fontWeight: medium,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: greyTextStyle.copyWith(
                                  fontSize: fontSizeSmall,
                                  fontWeight: regular,
                                ),
                                hintText: 'Search',
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              '${StringConstant.pathIcon}ic_search.png',
                              width: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            BlocBuilder<ProductTypeCubit, int>(
              builder: (context, state) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: const EdgeInsets.only(left: defaultMargin),
                    height: 62,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTypeItem(
                          isActive: state == 0,
                          title: 'Satuan',
                          onTap: () {
                            context.read<ProductTypeCubit>().setType(0);
                          },
                        ),
                        ProductTypeItem(
                          isActive: state == 1,
                          title: 'Layanan Kesehatan',
                          onTap: () {
                            context.read<ProductTypeCubit>().setType(1);
                          },
                        ),
                        ProductTypeItem(
                          isActive: state == 2,
                          title: 'Alat Kesehatan',
                          onTap: () {
                            context.read<ProductTypeCubit>().setType(2);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: ProductItem(),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ProductItem(),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget healthService() {
      return Container(
        margin: const EdgeInsets.only(
          top: 40,
        ),
        padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilih Tipe Layanan Kesehatan Anda',
              style: primaryTextStyle.copyWith(
                fontSize: fontSizeLarge,
                fontWeight: bold,
              ),
            ),
            BlocBuilder<HospitalTypeCubit, int>(
              builder: (context, state) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 22,
                      bottom: 40,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(190, 190, 190, 0.16),
                          blurRadius: 24,
                          offset: Offset(0, 16),
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HospitalTypeItem(
                          isActive: state == 0,
                          title: 'Satuan',
                          onTap: () {
                            context.read<HospitalTypeCubit>().setType(0);
                          },
                        ),
                        HospitalTypeItem(
                          isActive: state == 1,
                          title: 'Paket Pemeriksaan',
                          onTap: () {
                            context.read<HospitalTypeCubit>().setType(1);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const HospitalItem();
              },
            )
          ],
        ),
      );
    }

    return Stack(
      children: [
        Scaffold(
          appBar: AppBarPrimary(
            onTapDrawer: () {
              context.read<DrawerCubit>().setDrawer(true);
            },
            onTapCart: () {},
            onTapNotification: () {},
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  information(),
                  product(),
                  healthService(),
                  const BannerItem()
                ],
              ),
            ),
          ),
        ),
        const CustomDrawer(),
      ],
    );
  }
}
