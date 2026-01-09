///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsNl extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsNl _root = this; // ignore: unused_field

	@override 
	TranslationsNl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNl(meta: meta ?? this.$meta);

	// Translations
	@override late final TranslationsCommonNl common = TranslationsCommonNl._(_root);
	@override late final TranslationsDiscoverNl discover = TranslationsDiscoverNl._(_root);
	@override late final TranslationsRootNl root = TranslationsRootNl._(_root);
	@override late final TranslationsShopsNl shops = TranslationsShopsNl._(_root);
}

// Path: common
class TranslationsCommonNl extends TranslationsCommonEn {
	TranslationsCommonNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final TranslationsCommonActionsNl actions = TranslationsCommonActionsNl._(_root);
}

// Path: discover
class TranslationsDiscoverNl extends TranslationsDiscoverEn {
	TranslationsDiscoverNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final TranslationsDiscoverDiscoverPageNl discoverPage = TranslationsDiscoverDiscoverPageNl._(_root);
}

// Path: root
class TranslationsRootNl extends TranslationsRootEn {
	TranslationsRootNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final TranslationsRootNavigationNl navigation = TranslationsRootNavigationNl._(_root);
}

// Path: shops
class TranslationsShopsNl extends TranslationsShopsEn {
	TranslationsShopsNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final TranslationsShopsShopDetailPageNl shopDetailPage = TranslationsShopsShopDetailPageNl._(_root);
}

// Path: common.actions
class TranslationsCommonActionsNl extends TranslationsCommonActionsEn {
	TranslationsCommonActionsNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get tryAgain => 'Probeer opnieuw';
}

// Path: discover.discoverPage
class TranslationsDiscoverDiscoverPageNl extends TranslationsDiscoverDiscoverPageEn {
	TranslationsDiscoverDiscoverPageNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ontdekken';
	@override late final TranslationsDiscoverDiscoverPageErrorsNl errors = TranslationsDiscoverDiscoverPageErrorsNl._(_root);
}

// Path: root.navigation
class TranslationsRootNavigationNl extends TranslationsRootNavigationEn {
	TranslationsRootNavigationNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get today => 'Vandaag';
	@override String get discover => 'Ontdekken';
	@override String get alerts => 'Mijn Alerts';
	@override String get shops => 'Mijn Winkels';
}

// Path: shops.shopDetailPage
class TranslationsShopsShopDetailPageNl extends TranslationsShopsShopDetailPageEn {
	TranslationsShopsShopDetailPageNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Winkel Details';
	@override late final TranslationsShopsShopDetailPageErrorsNl errors = TranslationsShopsShopDetailPageErrorsNl._(_root);
}

// Path: discover.discoverPage.errors
class TranslationsDiscoverDiscoverPageErrorsNl extends TranslationsDiscoverDiscoverPageErrorsEn {
	TranslationsDiscoverDiscoverPageErrorsNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get somethingWentWrong => 'Er is iets misgegaan, probeer het opnieuw.';
}

// Path: shops.shopDetailPage.errors
class TranslationsShopsShopDetailPageErrorsNl extends TranslationsShopsShopDetailPageErrorsEn {
	TranslationsShopsShopDetailPageErrorsNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get failedToLoad => 'Kan winkelgegevens niet laden';
	@override String get shopNotFound => 'Winkel niet gevonden';
}

/// The flat map containing all translations for locale <nl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.actions.tryAgain' => 'Probeer opnieuw',
			'discover.discoverPage.title' => 'Ontdekken',
			'discover.discoverPage.errors.somethingWentWrong' => 'Er is iets misgegaan, probeer het opnieuw.',
			'root.navigation.today' => 'Vandaag',
			'root.navigation.discover' => 'Ontdekken',
			'root.navigation.alerts' => 'Mijn Alerts',
			'root.navigation.shops' => 'Mijn Winkels',
			'shops.shopDetailPage.title' => 'Winkel Details',
			'shops.shopDetailPage.errors.failedToLoad' => 'Kan winkelgegevens niet laden',
			'shops.shopDetailPage.errors.shopNotFound' => 'Winkel niet gevonden',
			_ => null,
		};
	}
}
