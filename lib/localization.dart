import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/l10n/generated/l10n.dart';
import 'package:localization/ui/first/first_view.dart';
import 'package:localization/ui/second/second_view.dart';
import 'package:localization/ui/select_language/select_language_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'localization_cubit.dart';
part 'localization_state.dart';

class Localization extends StatelessWidget {
  const Localization({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(LocalizationState()),
      child: BlocSelector<LocalizationCubit, LocalizationState, String>(
        selector: (state) => state.currentLocal,
        builder: (context, locale) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Localization',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
           locale: Locale(locale),
           supportedLocales: LocalizationDemo.delegate.supportedLocales,
            localizationsDelegates: [
              LocalizationDemo.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            initialRoute: SelectLanguageView.routeName,
            routes: {
              SelectLanguageView.routeName: SelectLanguageView.builder,
              FirstView.routeName: FirstView.builder,
              SecondView.routeName: SecondView.builder,
            },
          );
        },
      ),
    );
  }
}


