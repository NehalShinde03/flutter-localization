import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:localization/const/enum.dart';
import 'package:localization/core/base_cubit.dart';
import 'package:localization/l10n/generated/l10n.dart';
import 'package:localization/localization.dart';
import 'package:localization/ui/first/first_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'select_language_cubit.dart';

part 'select_language_state.dart';

class SelectLanguageView extends StatefulWidget {
  static String routeName = '/selected-language-view';

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectLanguageCubit(context, SelectLanguageState()),
      child: SelectLanguageView(),
    );
  }

  const SelectLanguageView({super.key});

  @override
  State<SelectLanguageView> createState() => _SelectLanguageViewState();
}

class _SelectLanguageViewState extends State<SelectLanguageView> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (isPop, value) => context.read<SelectLanguageCubit>().revertLocal(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocalizationDemo.of(context).selectLanguage,
          ),
          titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => context.read<SelectLanguageCubit>().revertLocal(),
            child: Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () => context.read<SelectLanguageCubit>().setLocale(),
            child: Text(LocalizationDemo.of(context).save),
          ),
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: BlocBuilder<SelectLanguageCubit, SelectLanguageState>(
            builder: (context, state) {
              return Column(
                children: [
                  TextField(
                    controller: controller,
                    onChanged: (value) => context.read<SelectLanguageCubit>().onSearch(language: value),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        fillColor: Colors.black12.withValues(alpha: 0.1),
                        filled: true,
                        isDense: true,
                        hintText: LocalizationDemo.of(context).selectLanguage,
                        enabledBorder:
                            OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder:
                            OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: Colors.transparent)),
                        border:
                            OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: Colors.transparent))),
                  ),
                  if (state.list.isEmpty) ...[
                    Expanded(
                      child: Center(
                        child: Text("Wait..!!!"),
                      ),
                    )
                  ] else ...[
                    const Gap(20),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: state.list.length,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          value: state.list[index].languageCode,
                          overlayColor: WidgetStatePropertyAll<Color>(Colors.transparent),
                          groupValue: state.languageCode,
                          onChanged: (value) {
                            context.read<SelectLanguageCubit>().onSelectLanguage(value: state.list[index].languageCode);
                          },
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding: EdgeInsetsDirectional.only(start: 8),
                          secondary: SizedBox.fromSize(
                            size: Size(35, 35),
                            child: ClipOval(
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset(
                                state.list[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          visualDensity: VisualDensity(vertical: -4),
                          title: Text(state.list[index].title),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Gap(10);
                      },
                    )
                  ],
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
