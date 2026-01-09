// Localization Usage Guide
// 
// This file demonstrates how to use slang translations in your Flutter app.
//
// There are two main approaches:
//
// Method A: Simple (no rebuild on locale change)
// -----------------------------------------------
// Import the translations:
// import 'package:proximitreats/i18n/strings.g.dart';
//
// Use the global `t` variable:
// final title = t.discoverPage.title;
// final error = t.discoverPage.errors.somethingWentWrong;
// final tryAgain = t.actions.tryAgain;
//
//
// Method B: Advanced (rebuild on locale change)
// -----------------------------------------------
// This is useful for settings pages where users can change locale at runtime.
//
// Import the translations:
// import 'package:proximitreats/i18n/strings.g.dart';
//
// Use within a widget's build method:
// @override
// Widget build(BuildContext context) {
//   final title = context.t.discoverPage.title;
//   // Or access namespace directly:
//   final tryAgain = context.t.actions.tryAgain;
//   
//   return Text(title);
// }
//
//
// Changing Locale at Runtime:
// ---------------------------
// To change the locale programmatically:
// await LocaleSettings.setLocale(AppLocale.nl); // Switch to Dutch
// await LocaleSettings.setLocale(AppLocale.en); // Switch to English
// await LocaleSettings.useDeviceLocale();        // Use device locale
//
//
// Available Locales:
// ------------------
// - AppLocale.en (English)
// - AppLocale.nl (Dutch)
//
//
// Available Translations (namespaced):
// ------------------------------------
// t.discoverPage.title
// t.discoverPage.errors.somethingWentWrong
// t.actions.tryAgain
//
// or with context:
// context.t.discoverPage.title
// context.t.discoverPage.errors.somethingWentWrong
// context.t.actions.tryAgain
