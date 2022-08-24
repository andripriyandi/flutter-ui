import 'package:dependencies/bloc/bloc.dart';

class HospitalTypeCubit extends Cubit<int> {
  HospitalTypeCubit() : super(0);

  void setType(int newItem) {
    emit(newItem);
  }
}
