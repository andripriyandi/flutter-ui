import 'package:auth/presentation/ui/sign_up_page.dart';
import 'package:component/theme/theme.dart';
import 'package:component/utils/next_page.dart';
import 'package:component/widgets/widgets.dart';
import 'package:dependencies/flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/ui/home_page.dart';
import 'package:resources/constant/string_constant.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: const EdgeInsets.only(right: defaultMargin),
        child: Column(
          children: [
            CustomInputText(
              title: 'Email',
              hintText: 'Masukkan email anda',
              controller: _emailController,
              inputType: TextInputType.emailAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Password',
                        style: primaryTextStyle.copyWith(
                          fontSize: fontSizeLarge,
                          fontWeight: semibold,
                        ),
                      ),
                      Text(
                        'Lupa Password anda ?',
                        style: primaryLightTextStyle.copyWith(
                          fontSize: fontSizeDefault,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  CustomInputText(
                    hintText: 'Masukkan password anda',
                    passwordMode: true,
                    controller: _passwordController,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: ButtonPrimary(
                      title: 'Login',
                      onTap: () {
                        nextPage(context, const HomePage());
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum Punya Akun ? ',
                          style: greyLightTextStyle.copyWith(
                            fontSize: fontSizeDefault,
                            fontWeight: regular,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            nextPage(context, const SignUpPage());
                          },
                          child: Text(
                            'Daftar Sekarang',
                            style: primaryTextStyle.copyWith(
                              fontSize: fontSizeDefault,
                              fontWeight: semibold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget copyright() {
      return Container(
        margin: const EdgeInsets.only(
          top: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.copyright,
              color: kGreyLightColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'SILK. all right reserved.',
              style: greyLightTextStyle.copyWith(
                fontSize: fontSizeDefault,
                fontWeight: regular,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: defaultMargin,
            top: 40,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hai, ',
                    style: primaryDarkTextStyle.copyWith(
                      fontSize: 28.sp,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Selamat Datang',
                    style: primaryDarkTextStyle.copyWith(
                      fontSize: 28.sp,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Text(
                  'Silahkan login untuk melanjutkan',
                  style: primaryLightTextStyle.copyWith(
                    fontSize: fontSizeSmall,
                    fontWeight: semibold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 280,
                  height: 260,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        '${StringConstant.pathImage}im_login.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              content(),
              copyright(),
            ],
          ),
        ),
      ),
    );
  }
}
