import 'package:dependencies/bloc/bloc.dart';

class ProductTypeCubit extends Cubit<int> {
  ProductTypeCubit() : super(0);

  void setType(int newItem) {
    emit(newItem);
  }
}
