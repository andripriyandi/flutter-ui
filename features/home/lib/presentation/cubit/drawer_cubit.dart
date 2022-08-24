import 'package:dependencies/bloc/bloc.dart';

class DrawerCubit extends Cubit<bool> {
  DrawerCubit() : super(false);

  void setDrawer(bool isDrawer) {
    emit(isDrawer);
  }
}
