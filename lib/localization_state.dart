part of 'localization.dart';

class LocalizationState extends Equatable {
  final String currentLocal;

  const LocalizationState({this.currentLocal = 'en'});

  @override
  List<Object?> get props => [currentLocal];

  LocalizationState copyWith({
    String? currentLocal,
  }) {
    return LocalizationState(currentLocal: currentLocal ?? this.currentLocal);
  }
}
