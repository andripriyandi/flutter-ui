import 'package:auth/presentation/ui/sign_in_page.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:dependencies/flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/di/dependency.dart';
import 'package:home/presentation/cubit/drawer_cubit.dart';
import 'package:home/presentation/cubit/hospital_type_cubit.dart';
import 'package:home/presentation/cubit/product_type_cubit.dart';
import 'package:profile/presentation/cubit/profile_type_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Dependency().initDependency();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => DrawerCubit()),
            BlocProvider(create: (context) => ProductTypeCubit()),
            BlocProvider(create: (context) => HospitalTypeCubit()),
            BlocProvider(create: (context) => ProfileTypeCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter UI',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          ),
        );
      },
      child: const SignInPage(),
    );
  }
}
