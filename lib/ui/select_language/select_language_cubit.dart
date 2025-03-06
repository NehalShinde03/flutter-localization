part of 'select_language_view.dart';

class SelectLanguageCubit extends BaseCubit<SelectLanguageState> {

  SelectLanguageCubit(super.context, super.initialState);

  @override
  void onCreate() {
    super.onCreate();
    setLanguageInList();
  }

  Future<void> setLanguageInList() async {
    List<SelectLanguageModel> list = [];
    SharedPreferences preferences = await SharedPreferences.getInstance();

    for(int i=0; i<Language.values.length; i++){
      list.add(SelectLanguageModel(title: Language.values[i].value, image: Language.values[i].image, languageCode: Language.values[i].code));
    }
    emit(state.copyWith(list: list, searchList: list, languageCode: preferences.getString("local")));
  }

  void onSelectLanguage({required String value}){
    emit(state.copyWith(languageCode: value));
    context.read<LocalizationCubit>().updateLocale(value, true);
  }

   void onSearch({required String language}){
      if(language.isEmpty){
        emit(state.copyWith(list: state.searchList));
        return;
      }

      final List<SelectLanguageModel> list = state.list.where((e){
        return e.title.toLowerCase().startsWith(language.toLowerCase());
      }).toList();
      emit(state.copyWith(list: list));
   }

   void setLocale() async{
      if(context.mounted){
        context.read<LocalizationCubit>().updateLocale(state.languageCode);
        Navigator.pushNamed(context, FirstView.routeName);
      }
   }

   void revertLocal() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String local = preferences.getString("local") ?? "en";
    if(context.mounted){
      context.read<LocalizationCubit>().updateLocale(local);
      Navigator.pop(context);
    }
   }

}
