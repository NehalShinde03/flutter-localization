import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:localization/core/base_cubit.dart';
import 'package:localization/l10n/generated/l10n.dart';
import 'package:localization/ui/select_language/select_language_view.dart';

part 'second_cubit.dart';

part 'second_state.dart';

class SecondView extends StatefulWidget {
  static String routeName = "/second-view";

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (_) => SecondCubit(context,SecondState()),
      child: SecondView(),
    );
  }

  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  
  @override
  Widget build(BuildContext context) {
    final l10n = LocalizationDemo.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocalizationDemo.of(context).secondView),
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(text: l10n.everyDayIsAFreshStartFilledWithNewOpportunities),
              CommonText(text: l10n.iAmCapableStrongAndReadyToSucceed),
              CommonText(text: l10n.happinessIsAChoiceAndIChooseToBeHappy),
              CommonText(text: l10n.challengesAreJustOpportunitiesForGrowth),
              CommonText(text: l10n.iAttractPositivityAndGoodThingsIntoMyLife),
              CommonText(text: l10n.myDreamsAreValidAndIAmOnTheRight),
              CommonText(text: l10n.smallProgressIsStillProgresskeepGoing),
              CommonText(text: l10n.everythingINeedToSucceedIsAlreadyWithinMe),
              CommonText(text: l10n.theBestIsYetToCome),
              CommonText(text: l10n.iBelieveInMyselfAndMyJourney),
            ],
          ),
        ),
      ),
    );
  }
}


class CommonText extends StatelessWidget {
  const CommonText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
