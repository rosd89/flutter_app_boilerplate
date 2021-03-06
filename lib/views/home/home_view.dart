library home_view;

import 'package:logger/logger.dart';
import 'package:program_app/core/logger.dart';
import 'package:program_app/views/dashboard/dashboard_view.dart';
import 'package:program_app/views/newsfeed/newsfeed_view.dart';
import 'package:program_app/views/notice/notice_view.dart';
import 'package:program_app/views/profile/profile_view.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'home_view_model.dart';

part 'home_mobile.dart';
part 'home_tablet.dart';
part 'home_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return ViewModelProvider<HomeViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _HomeMobile(viewModel),
            desktop: _HomeDesktop(viewModel),
            tablet: _HomeTablet(viewModel),
          );
        });
  }
}
