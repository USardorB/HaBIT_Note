import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_note/core/const/asset_consts.dart';
import 'package:habit_note/core/l10n/strings.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.notes),
        backgroundColor: ColorScheme.of(context).surfaceContainerLow,
        actions: [
          IconButton(
            onPressed: () {},
            color: ColorScheme.of(context).outline,
            icon: const Icon(Icons.palette),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.grid_view_sharp),
            color: ColorScheme.of(context).outline,
            selectedIcon: const Icon(Icons.view_agenda),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 5),
          SvgPicture.asset(kAssetNoNote),
          const Spacer(),
          Text(
            Strings.createYourFirstNote,
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
