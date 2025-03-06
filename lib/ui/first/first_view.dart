import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:localization/core/base_cubit.dart';
import 'package:localization/l10n/generated/l10n.dart';
import 'package:localization/ui/second/second_view.dart';
import 'package:localization/ui/select_language/select_language_view.dart';

part 'first_cubit.dart';

part 'first_state.dart';

class FirstView extends StatefulWidget {
  static String routeName = "/first-view";

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (_) => FirstCubit(context,FirstState()),
      child: FirstView(),
    );
  }

  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    final l10n = LocalizationDemo.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocalizationDemo.of(context).firstView),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            menuPadding: EdgeInsets.zero,
            onSelected: (index) {
              Navigator.pushNamed(context, SelectLanguageView.routeName);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text(LocalizationDemo.of(context).changeLanguage),
                )
              ];
            },
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onPressed: () => Navigator.pushNamed(context, SecondView.routeName),
          child: Text(LocalizationDemo.of(context).next),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.0,
            children: [
              CommonText(text: l10n.findingTheMapAryanDiscoversAnOldMysteriousMapIn),
              CommonText(text: l10n.theAdventureBeginsHeSetsOutOnAJourneyTo),
              CommonText(text: l10n.theForestChallengeHeEntersADenseForestWhereThe),
              CommonText(text: l10n.aLoyalCompanionAStrayDogShadowJoinsHimOn),
              CommonText(text: l10n.theHiddenCaveTheyDiscoverAnAncientCaveMarkedOn),
              CommonText(text: l10n.theRiddleTestAryanSolvesAStoneDoorsRiddleTo),
              CommonText(text: l10n.theRealTreasureInsteadOfGoldHeFindsAnExplorers),
              CommonText(text: l10n.theJourneyBackAryanReturnsHomeChangedByHisExperience),
              CommonText(text: l10n.aNewPurposeHeBecomesAStorytellerInspiringOthersWith),
            ],
          ),
        ),
      ),
    );
  }
}
