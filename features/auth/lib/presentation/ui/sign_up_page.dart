import 'package:auth/presentation/ui/sign_in_page.dart';
import 'package:component/theme/theme.dart';
import 'package:component/utils/next_page.dart';
import 'package:component/widgets/button/button_primary.dart';
import 'package:component/widgets/textfield/custom_input_text.dart';
import 'package:dependencies/flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:resources/constant/string_constant.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _noKtpController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: const EdgeInsets.only(right: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomInputText(
                    title: 'Nama Depan',
                    hintText: 'John',
                    controller: _firstNameController,
                    inputType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(width: 35),
                Expanded(
                  child: CustomInputText(
                    title: 'Nama Belakang',
                    hintText: 'Doe',
                    controller: _lastNameController,
                    inputType: TextInputType.emailAddress,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: CustomInputText(
                title: 'No KTP',
                hintText: 'Masukkan No. KTP anda',
                controller: _noKtpController,
                inputType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: CustomInputText(
                title: 'Email',
                hintText: 'Masukkan email anda',
                controller: _emailController,
                inputType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: CustomInputText(
                title: 'No HP',
                hintText: 'Masukkan No. HP anda',
                controller: _phoneController,
                inputType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: CustomInputText(
                title: 'Password',
                hintText: 'Masukkan password anda',
                passwordMode: true,
                controller: _passwordController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: CustomInputText(
                title: 'Konfirmasi Password',
                hintText: 'Masukkan password anda',
                passwordMode: true,
                controller: _confirmPasswordController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: ButtonPrimary(
                title: 'Register',
                onTap: () {},
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
                    'Sudah punya Akun ? ',
                    style: greyLightTextStyle.copyWith(
                      fontSize: fontSizeDefault,
                      fontWeight: regular,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      nextPageRemoveUntil(context, const SignInPage());
                    },
                    child: Text(
                      'Login Sekarang',
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
                        fontSize: 28.sp, fontWeight: bold),
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
