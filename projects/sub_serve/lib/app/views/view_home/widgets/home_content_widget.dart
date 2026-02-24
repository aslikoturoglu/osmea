/*
 * HomeContentWidget
 * -----------------
 * Main content widget for home view. Same structure as storefront_woo.
 */

import 'package:flutter/material.dart';
import 'package:sub_serve/app/views/view_home/models/home_view_model.dart';
import 'package:sub_serve/app/views/view_home/models/module/states.dart';
import 'package:sub_serve/src/resources/resources.g.dart';

class HomeContentWidget extends StatelessWidget {
  final HomeLoadedState state;
  final HomeViewModel viewModel;

  const HomeContentWidget({
    super.key,
    required this.state,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        context.resources.appTitle,
        style: (theme.textTheme.headlineLarge ?? const TextStyle(fontSize: 32))
            .copyWith(
              color: theme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black87,
            ),
      ),
    );
  }
}
