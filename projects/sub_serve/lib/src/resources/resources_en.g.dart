///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'resources.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final resources = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: $meta = meta ?? TranslationMetadata(
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

	/// en: 'en_US'
	String get localLanguageCode => TranslationOverrides.string(_root.$meta, 'localLanguageCode', {}) ?? 'en_US';

	/// en: 'MasterFabric SubServe'
	String get appTitle => TranslationOverrides.string(_root.$meta, 'appTitle', {}) ?? 'MasterFabric SubServe';

	/// en: 'Home'
	String get home => TranslationOverrides.string(_root.$meta, 'home', {}) ?? 'Home';

	/// en: 'Settings'
	String get settings => TranslationOverrides.string(_root.$meta, 'settings', {}) ?? 'Settings';

	/// en: 'Save'
	String get save => TranslationOverrides.string(_root.$meta, 'save', {}) ?? 'Save';

	/// en: 'Cancel'
	String get cancel => TranslationOverrides.string(_root.$meta, 'cancel', {}) ?? 'Cancel';

	/// en: 'Loading...'
	String get loading => TranslationOverrides.string(_root.$meta, 'loading', {}) ?? 'Loading...';

	/// en: 'Error'
	String get error => TranslationOverrides.string(_root.$meta, 'error', {}) ?? 'Error';

	/// en: 'Retry'
	String get retry => TranslationOverrides.string(_root.$meta, 'retry', {}) ?? 'Retry';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'localLanguageCode' => TranslationOverrides.string(_root.$meta, 'localLanguageCode', {}) ?? 'en_US',
			'appTitle' => TranslationOverrides.string(_root.$meta, 'appTitle', {}) ?? 'MasterFabric SubServe',
			'home' => TranslationOverrides.string(_root.$meta, 'home', {}) ?? 'Home',
			'settings' => TranslationOverrides.string(_root.$meta, 'settings', {}) ?? 'Settings',
			'save' => TranslationOverrides.string(_root.$meta, 'save', {}) ?? 'Save',
			'cancel' => TranslationOverrides.string(_root.$meta, 'cancel', {}) ?? 'Cancel',
			'loading' => TranslationOverrides.string(_root.$meta, 'loading', {}) ?? 'Loading...',
			'error' => TranslationOverrides.string(_root.$meta, 'error', {}) ?? 'Error',
			'retry' => TranslationOverrides.string(_root.$meta, 'retry', {}) ?? 'Retry',
			_ => null,
		};
	}
}
