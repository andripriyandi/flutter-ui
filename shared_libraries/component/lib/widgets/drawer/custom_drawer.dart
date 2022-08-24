import 'package:auth/presentation/ui/sign_in_page.dart';
import 'package:component/theme/theme.dart';
import 'package:component/utils/next_page.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/cubit/drawer_cubit.dart';
import 'package:profile/presentation/cubit/profile_type_cubit.dart';
import 'package:profile/presentation/ui/profile_page.dart';
import 'package:resources/constant/string_constant.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget itemProfile(String title) {
      return Row(
        children: [
          Text(
            title,
            style: greyTextStyle.copyWith(
              fontSize: fontSizeSmall,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          Icon(
            Icons.chevron_right,
            color: kGreyColor,
          )
        ],
      );
    }

    return BlocBuilder<DrawerCubit, bool>(
      builder: (context, state) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
          top: 0.0,
          bottom: 0.0,
          right: state ? 0.0 : -(MediaQuery.of(context).size.width / 3) * 2.5,
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                state
                    ? GestureDetector(
                        onTap: () {
                          context.read<DrawerCubit>().setDrawer(false);
                        },
                        child: Container(
                          width: 1000,
                          color: kPrimaryColor.withOpacity(0.8),
                        ),
                      )
                    : const SizedBox(),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: (MediaQuery.of(context).size.width / 3) * 2.5,
                    height: MediaQuery.of(context).size.height,
                    color: kWhiteColor,
                    child: SafeArea(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: defaultMargin * 2,
                          vertical: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Angga ',
                                            style: primaryTextStyle.copyWith(
                                              fontSize: fontSizeDefault,
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Text(
                                            'Prayoga',
                                            style: primaryTextStyle.copyWith(
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
                            const SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<DrawerCubit>().setDrawer(false);
                                context.read<ProfileTypeCubit>().setType(0);
                                nextPage(context, const ProfilePage());
                              },
                              child: itemProfile('Profile Saya'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 23),
                              child: GestureDetector(
                                onTap: () {
                                  context.read<DrawerCubit>().setDrawer(false);
                                  context.read<ProfileTypeCubit>().setType(1);
                                  nextPage(context, const ProfilePage());
                                },
                                child: itemProfile('Pengaturan'),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                nextPageRemoveUntil(
                                    context, const SignInPage());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                margin: const EdgeInsets.only(
                                  top: 50,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 48,
                                  vertical: 7,
                                ),
                                child: Text(
                                  'Logout',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: fontSizeSmall,
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Ikuti Kami di',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: fontSizeLarge,
                                    fontWeight: medium,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Image.asset(
                                  '${StringConstant.pathIcon}ic_fb.png',
                                  width: 16,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  '${StringConstant.pathIcon}ic_ig.png',
                                  width: 16,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  '${StringConstant.pathIcon}ic_twitter.png',
                                  width: 16,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 120,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'FAQ',
                                  style: greyLightTextStyle.copyWith(
                                    fontSize: fontSizeSmall,
                                    fontWeight: semibold,
                                  ),
                                ),
                                Text(
                                  'Terms and Conditions',
                                  style: greyLightTextStyle.copyWith(
                                    fontSize: fontSizeSmall,
                                    fontWeight: semibold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
