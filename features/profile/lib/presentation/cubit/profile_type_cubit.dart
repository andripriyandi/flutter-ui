import 'package:dependencies/bloc/bloc.dart';

class ProfileTypeCubit extends Cubit<int> {
  ProfileTypeCubit() : super(0);

  void setType(int newItem) {
    emit(newItem);
  }
}
