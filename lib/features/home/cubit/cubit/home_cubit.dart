import 'package:e_commerce/features/home/cubit/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/features/home/services/get_all_advices.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  Future<void> fetchAdvices() async {
    emit(HomeLoading());
    try {
      final advices = await AllAdviceServices().getAllAdvices();
      emit(HomeSuccess(advices));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }
}
