import 'package:component/theme/theme.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/cubit/drawer_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [],
                          )
                        ],
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
