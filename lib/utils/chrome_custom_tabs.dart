import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

// void _launchUrl(BuildContext context, String url) async {
//   final theme = Theme.of(context);
//   try {
//     await launchUrl(
//       Uri.parse(url),
//       customTabsOptions: CustomTabsOptions(
//         colorSchemes: CustomTabsColorSchemes.defaults(
//           toolbarColor: theme.colorScheme.surface,
//           navigationBarColor: theme.colorScheme.background,
//         ),
//         shareState: CustomTabsShareState.on,
//         urlBarHidingEnabled: true,
//         showTitle: true,
//       ),
//       safariVCOptions: SafariViewControllerOptions(
//         preferredBarTintColor: theme.colorScheme.surface,
//         preferredControlTintColor: theme.colorScheme.onSurface,
//         barCollapsingEnabled: true,
//         entersReaderIfAvailable: false,
//       ),
//     );
//   } catch (e) {
//     // If the URL launch fails, an exception will be thrown. (For example, if no browser app is installed on the Android device.)
//     debugPrint(e.toString());
//   }
// }

void launchCustomTabURL(BuildContext context, String link) async {
  final theme = Theme.of(context);
  try {
    await launchUrl(
      Uri.parse(link),
      customTabsOptions: CustomTabsOptions(
        colorSchemes: CustomTabsColorSchemes.defaults(
          toolbarColor: theme.colorScheme.surface,
          navigationBarColor: theme.colorScheme.background,
        ),
        shareState: CustomTabsShareState.on,
        urlBarHidingEnabled: true,
        showTitle: true,
      ),
      safariVCOptions: SafariViewControllerOptions(
        preferredBarTintColor: theme.colorScheme.surface,
        preferredControlTintColor: theme.colorScheme.onSurface,
        barCollapsingEnabled: true,
        entersReaderIfAvailable: false,
      ),
    );
  } catch (e) {
    // An exception is thrown if browser app is not installed on Android device.
    debugPrint(e.toString());
  }
}
