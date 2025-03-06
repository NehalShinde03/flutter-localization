// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LocalizationDemo {
  LocalizationDemo();

  static LocalizationDemo? _current;

  static LocalizationDemo get current {
    assert(
      _current != null,
      'No instance of LocalizationDemo was loaded. Try to initialize the LocalizationDemo delegate before accessing LocalizationDemo.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LocalizationDemo> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LocalizationDemo();
      LocalizationDemo._current = instance;

      return instance;
    });
  }

  static LocalizationDemo of(BuildContext context) {
    final instance = LocalizationDemo.maybeOf(context);
    assert(
      instance != null,
      'No instance of LocalizationDemo present in the widget tree. Did you add LocalizationDemo.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static LocalizationDemo? maybeOf(BuildContext context) {
    return Localizations.of<LocalizationDemo>(context, LocalizationDemo);
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Finding the Map – Aryan discovers an old, mysterious map in an antique shop.`
  String get findingTheMapAryanDiscoversAnOldMysteriousMapIn {
    return Intl.message(
      'Finding the Map – Aryan discovers an old, mysterious map in an antique shop.',
      name: 'findingTheMapAryanDiscoversAnOldMysteriousMapIn',
      desc: '',
      args: [],
    );
  }

  /// `The Adventure Begins – He sets out on a journey to uncover its secrets.`
  String get theAdventureBeginsHeSetsOutOnAJourneyTo {
    return Intl.message(
      'The Adventure Begins – He sets out on a journey to uncover its secrets.',
      name: 'theAdventureBeginsHeSetsOutOnAJourneyTo',
      desc: '',
      args: [],
    );
  }

  /// `The Forest Challenge – He enters a dense forest, where the path vanishes.`
  String get theForestChallengeHeEntersADenseForestWhereThe {
    return Intl.message(
      'The Forest Challenge – He enters a dense forest, where the path vanishes.',
      name: 'theForestChallengeHeEntersADenseForestWhereThe',
      desc: '',
      args: [],
    );
  }

  /// `A Loyal Companion – A stray dog, Shadow, joins him on the journey.`
  String get aLoyalCompanionAStrayDogShadowJoinsHimOn {
    return Intl.message(
      'A Loyal Companion – A stray dog, Shadow, joins him on the journey.',
      name: 'aLoyalCompanionAStrayDogShadowJoinsHimOn',
      desc: '',
      args: [],
    );
  }

  /// `The Hidden Cave – They discover an ancient cave marked on the map.`
  String get theHiddenCaveTheyDiscoverAnAncientCaveMarkedOn {
    return Intl.message(
      'The Hidden Cave – They discover an ancient cave marked on the map.',
      name: 'theHiddenCaveTheyDiscoverAnAncientCaveMarkedOn',
      desc: '',
      args: [],
    );
  }

  /// `The Riddle Test – Aryan solves a stone door’s riddle to proceed.`
  String get theRiddleTestAryanSolvesAStoneDoorsRiddleTo {
    return Intl.message(
      'The Riddle Test – Aryan solves a stone door’s riddle to proceed.',
      name: 'theRiddleTestAryanSolvesAStoneDoorsRiddleTo',
      desc: '',
      args: [],
    );
  }

  /// `The Real Treasure – Instead of gold, he finds an explorer’s journal full of wisdom.`
  String get theRealTreasureInsteadOfGoldHeFindsAnExplorers {
    return Intl.message(
      'The Real Treasure – Instead of gold, he finds an explorer’s journal full of wisdom.',
      name: 'theRealTreasureInsteadOfGoldHeFindsAnExplorers',
      desc: '',
      args: [],
    );
  }

  /// `The Journey Back – Aryan returns home, changed by his experience.`
  String get theJourneyBackAryanReturnsHomeChangedByHisExperience {
    return Intl.message(
      'The Journey Back – Aryan returns home, changed by his experience.',
      name: 'theJourneyBackAryanReturnsHomeChangedByHisExperience',
      desc: '',
      args: [],
    );
  }

  /// `A New Purpose – He becomes a storyteller, inspiring others with his adventure.`
  String get aNewPurposeHeBecomesAStorytellerInspiringOthersWith {
    return Intl.message(
      'A New Purpose – He becomes a storyteller, inspiring others with his adventure.',
      name: 'aNewPurposeHeBecomesAStorytellerInspiringOthersWith',
      desc: '',
      args: [],
    );
  }

  /// `First View`
  String get firstView {
    return Intl.message('First View', name: 'firstView', desc: '', args: []);
  }

  /// `Every day is a fresh start filled with new opportunities.`
  String get everyDayIsAFreshStartFilledWithNewOpportunities {
    return Intl.message(
      'Every day is a fresh start filled with new opportunities.',
      name: 'everyDayIsAFreshStartFilledWithNewOpportunities',
      desc: '',
      args: [],
    );
  }

  /// `I am capable, strong, and ready to succeed.`
  String get iAmCapableStrongAndReadyToSucceed {
    return Intl.message(
      'I am capable, strong, and ready to succeed.',
      name: 'iAmCapableStrongAndReadyToSucceed',
      desc: '',
      args: [],
    );
  }

  /// `Happiness is a choice, and I choose to be happy today.`
  String get happinessIsAChoiceAndIChooseToBeHappy {
    return Intl.message(
      'Happiness is a choice, and I choose to be happy today.',
      name: 'happinessIsAChoiceAndIChooseToBeHappy',
      desc: '',
      args: [],
    );
  }

  /// `Challenges are just opportunities for growth.`
  String get challengesAreJustOpportunitiesForGrowth {
    return Intl.message(
      'Challenges are just opportunities for growth.',
      name: 'challengesAreJustOpportunitiesForGrowth',
      desc: '',
      args: [],
    );
  }

  /// `I attract positivity and good things into my life.`
  String get iAttractPositivityAndGoodThingsIntoMyLife {
    return Intl.message(
      'I attract positivity and good things into my life.',
      name: 'iAttractPositivityAndGoodThingsIntoMyLife',
      desc: '',
      args: [],
    );
  }

  /// `My dreams are valid, and I am on the right path.`
  String get myDreamsAreValidAndIAmOnTheRight {
    return Intl.message(
      'My dreams are valid, and I am on the right path.',
      name: 'myDreamsAreValidAndIAmOnTheRight',
      desc: '',
      args: [],
    );
  }

  /// `Small progress is still progress—keep going!`
  String get smallProgressIsStillProgresskeepGoing {
    return Intl.message(
      'Small progress is still progress—keep going!',
      name: 'smallProgressIsStillProgresskeepGoing',
      desc: '',
      args: [],
    );
  }

  /// `Everything I need to succeed is already within me.`
  String get everythingINeedToSucceedIsAlreadyWithinMe {
    return Intl.message(
      'Everything I need to succeed is already within me.',
      name: 'everythingINeedToSucceedIsAlreadyWithinMe',
      desc: '',
      args: [],
    );
  }

  /// `The best is yet to come!`
  String get theBestIsYetToCome {
    return Intl.message(
      'The best is yet to come!',
      name: 'theBestIsYetToCome',
      desc: '',
      args: [],
    );
  }

  /// `I believe in myself and my journey.`
  String get iBelieveInMyselfAndMyJourney {
    return Intl.message(
      'I believe in myself and my journey.',
      name: 'iBelieveInMyselfAndMyJourney',
      desc: '',
      args: [],
    );
  }

  /// `Second View`
  String get secondView {
    return Intl.message('Second View', name: 'secondView', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<LocalizationDemo> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LocalizationDemo> load(Locale locale) => LocalizationDemo.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
