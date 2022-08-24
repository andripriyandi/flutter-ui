import 'package:component/widgets/widgets.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/cubit/drawer_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
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
        ),
        const CustomDrawer(),
      ],
    );
  }
}
