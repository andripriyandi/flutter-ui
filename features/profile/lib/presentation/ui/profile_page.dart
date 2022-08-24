import 'package:component/theme/theme.dart';
import 'package:component/widgets/widgets.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/cubit/drawer_cubit.dart';
import 'package:profile/presentation/cubit/profile_type_cubit.dart';
import 'package:resources/constant/string_constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _noKtpController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget profileType() {
      return BlocBuilder<ProfileTypeCubit, int>(
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
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
                    ProfileTypeItem(
                      isActive: state == 0,
                      title: 'Profile Saya',
                      onTap: () {
                        context.read<ProfileTypeCubit>().setType(0);
                      },
                    ),
                    ProfileTypeItem(
                      isActive: state == 1,
                      title: 'Pengaturan',
                      onTap: () {
                        context.read<ProfileTypeCubit>().setType(1);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    Widget formProfile() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            CustomInputText(
              title: 'Nama Depan',
              hintText: 'John',
              controller: _firstNameController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomInputText(
                title: 'Nama Belakang',
                hintText: 'Masukkan nama belakang anda',
                controller: _lastNameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomInputText(
                title: 'No Telpon',
                hintText: 'Masukkan No telpon anda',
                controller: _phoneController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomInputText(
                title: 'No Telpon',
                hintText: 'Masukkan No telpon anda',
                controller: _phoneController,
                inputType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomInputText(
                title: 'No KTP',
                hintText: 'Masukkan No telpon anda',
                controller: _noKtpController,
                inputType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      'Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya',
                      style: greyTextStyle.copyWith(
                        fontSize: fontSizeSmall,
                        fontWeight: medium,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 34,
              ),
              child: ButtonPrimary(
                title: 'Simpan Profile',
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 31,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
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
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                      '${StringConstant.pathImage}im_bg_profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                    child: Row(
                      children: [
                        Image.asset(
                          '${StringConstant.pathImage}im_profile.png',
                          width: 60,
                          height: 60,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Angga ',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: fontSizeDefault,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Prayoga',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: fontSizeDefault,
                                      fontWeight: regular,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text(
                                  'Membership BBLK',
                                  style: primaryLightTextStyle.copyWith(
                                    fontSize: fontSizeSmall,
                                    fontWeight: bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff1A3E78).withOpacity(0.8),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(16, 11, 24, 11),
                    child: Text(
                      'Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi',
                      style: whiteTextStyle.copyWith(
                        fontSize: fontSizeSmall,
                        fontWeight: regular,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Text(
                'Pilih data yang ingin ditampilkan',
                style: primaryTextStyle.copyWith(
                  fontSize: fontSizeLarge,
                  fontWeight: bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 23,
                bottom: 55,
              ),
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kCyanColor,
                    ),
                    child: Image.asset(
                      '${StringConstant.pathIcon}ic_contact.png',
                      width: 18,
                      color: kPrimaryColor,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Data Diri',
                          style: primaryTextStyle.copyWith(
                            fontSize: fontSizeDefault,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          'Data diri anda sesuai KTP',
                          style: greyLightTextStyle.copyWith(
                            fontSize: fontSizeSmall,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffEBEDF7),
                    ),
                    child: Image.asset(
                      '${StringConstant.pathIcon}ic_marker.png',
                      width: 18,
                      color: kGreyColor,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            formProfile(),
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
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Column(
              children: [
                profileType(),
                content(),
                const SizedBox(
                  height: 80,
                ),
                const BannerItem(),
              ],
            ),
          ),
        ),
        const CustomDrawer(),
      ],
    );
  }
}
