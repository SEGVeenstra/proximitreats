///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonEn common = TranslationsCommonEn.internal(_root);
	late final TranslationsDiscoverEn discover = TranslationsDiscoverEn.internal(_root);
	late final TranslationsRootEn root = TranslationsRootEn.internal(_root);
	late final TranslationsShopsEn shops = TranslationsShopsEn.internal(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsCommonActionsEn actions = TranslationsCommonActionsEn.internal(_root);
}

// Path: discover
class TranslationsDiscoverEn {
	TranslationsDiscoverEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsDiscoverDiscoverPageEn discoverPage = TranslationsDiscoverDiscoverPageEn.internal(_root);
}

// Path: root
class TranslationsRootEn {
	TranslationsRootEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsRootNavigationEn navigation = TranslationsRootNavigationEn.internal(_root);
}

// Path: shops
class TranslationsShopsEn {
	TranslationsShopsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsShopsShopDetailPageEn shopDetailPage = TranslationsShopsShopDetailPageEn.internal(_root);
	late final TranslationsShopsMyShopsPageEn myShopsPage = TranslationsShopsMyShopsPageEn.internal(_root);
}

// Path: common.actions
class TranslationsCommonActionsEn {
	TranslationsCommonActionsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Try again'
	String get tryAgain => 'Try again';
}

// Path: discover.discoverPage
class TranslationsDiscoverDiscoverPageEn {
	TranslationsDiscoverDiscoverPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Discover'
	String get title => 'Discover';

	late final TranslationsDiscoverDiscoverPageErrorsEn errors = TranslationsDiscoverDiscoverPageErrorsEn.internal(_root);
}

// Path: root.navigation
class TranslationsRootNavigationEn {
	TranslationsRootNavigationEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'Discover'
	String get discover => 'Discover';

	/// en: 'My Alerts'
	String get alerts => 'My Alerts';

	/// en: 'My Shops'
	String get shops => 'My Shops';
}

// Path: shops.shopDetailPage
class TranslationsShopsShopDetailPageEn {
	TranslationsShopsShopDetailPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Shop Details'
	String get title => 'Shop Details';

	late final TranslationsShopsShopDetailPageErrorsEn errors = TranslationsShopsShopDetailPageErrorsEn.internal(_root);
}

// Path: shops.myShopsPage
class TranslationsShopsMyShopsPageEn {
	TranslationsShopsMyShopsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'My Shops'
	String get title => 'My Shops';
}

// Path: discover.discoverPage.errors
class TranslationsDiscoverDiscoverPageErrorsEn {
	TranslationsDiscoverDiscoverPageErrorsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Something went wrong, please try again.'
	String get somethingWentWrong => 'Something went wrong, please try again.';
}

// Path: shops.shopDetailPage.errors
class TranslationsShopsShopDetailPageErrorsEn {
	TranslationsShopsShopDetailPageErrorsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Failed to load shop details'
	String get failedToLoad => 'Failed to load shop details';

	/// en: 'Shop not found'
	String get shopNotFound => 'Shop not found';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.actions.tryAgain' => 'Try again',
			'discover.discoverPage.title' => 'Discover',
			'discover.discoverPage.errors.somethingWentWrong' => 'Something went wrong, please try again.',
			'root.navigation.today' => 'Today',
			'root.navigation.discover' => 'Discover',
			'root.navigation.alerts' => 'My Alerts',
			'root.navigation.shops' => 'My Shops',
			'shops.shopDetailPage.title' => 'Shop Details',
			'shops.shopDetailPage.errors.failedToLoad' => 'Failed to load shop details',
			'shops.shopDetailPage.errors.shopNotFound' => 'Shop not found',
			'shops.myShopsPage.title' => 'My Shops',
			_ => null,
		};
	}
}
