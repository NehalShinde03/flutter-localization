part of 'select_language_view.dart';

class SelectLanguageState extends Equatable {
  final List<SelectLanguageModel> list;
  final List<SelectLanguageModel> searchList;
  final int index;
  final String languageCode;

  const SelectLanguageState({
    this.list = const [],
    this.searchList = const [],
    this.index = 0,
    this.languageCode = "en",
  });

  @override
  List<Object?> get props => [
        list,
        searchList,
        index,
        languageCode,
      ];

  SelectLanguageState copyWith({
    List<SelectLanguageModel>? list,
    List<SelectLanguageModel>? searchList,
    int? index,
    String? languageCode,
  }) {
    return SelectLanguageState(
      list: list ?? this.list,
      searchList: searchList ?? this.searchList,
      index: index ?? this.index,
      languageCode: languageCode ?? this.languageCode,
    );
  }
}

class SelectLanguageModel {
  final String title;
  final String image;

  final String languageCode;

  SelectLanguageModel({required this.title, required this.image, required this.languageCode});
}
