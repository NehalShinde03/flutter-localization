part of 'localization.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit(super.initialState) {
    updateLocale();
  }

  void updateLocale([String? languageCode, bool isLanguageSet = false]) async {
    if (isLanguageSet) {
      emit(state.copyWith(currentLocal: languageCode ?? "en"));
    }else{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      final String currentLocal = preferences.getString("local") ?? "en";

      if (currentLocal == languageCode) {
        emit(state.copyWith(currentLocal: languageCode));
       return;
      }

      final String newLocal = languageCode ?? currentLocal;
      emit(state.copyWith(currentLocal: newLocal));
      await preferences.setString("local", newLocal);
    }
  }
}
