import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part '../../states/lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(LangInitial());
  bool isEnglish =
      false; // القيمة هنا تعتمد على اللغة التي تريدها كلغة افتراضية

  void changeLang(bool value) {
    emit(LangLoading());
    isEnglish = value;
    emit(LangChanged());
  }

  bool scaleEgValue = false; // قيمة التكبير/التصغير للعلم المصري
  bool scaleUsValue = false; // قيمة التكبير/التصغير للعلم الأمريكي

  // تحديث قيمة التكبير/التصغير للعلم المصري
  void setScaleEg(bool value) {
    emit(LangLoading());
    scaleEgValue = value;
    emit(LangChanged());
  }

  // تحديث قيمة التكبير/التصغير للعلم الأمريكي
  void setScaleUs(bool value) {
    emit(LangLoading());

    scaleUsValue = value;
    emit(LangChanged());
  }
}
