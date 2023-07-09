import 'package:app_essentials/env/env_setup.dart';
import 'package:app_essentials/widgets/base_widget.dart';
import 'package:flutter/material.dart';
import 'app/routes/app_pages.dart';

interface class AuthAppEssentials {
  Future<void> main({
    Future<void> Function()? additionalSetup,
    String initailRoute = ERoutes.SPLASH,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    additionalSetup ?? ();
    Environment(
      devApiBaseUrl: "http://www.abc.com",
    ).initialize();
    runApp(BaseWidget(initailRoute, EssentialAppPages.routes));
  }
}
