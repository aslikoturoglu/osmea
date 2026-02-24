///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/overrides.dart';
import 'resources.g.dart';

// Path: <root>
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override String get localLanguageCode => TranslationOverrides.string(_root.$meta, 'localLanguageCode', {}) ?? 'tr_TR';
	@override String get appTitle => TranslationOverrides.string(_root.$meta, 'appTitle', {}) ?? 'MasterFabric SubServe';
	@override String get home => TranslationOverrides.string(_root.$meta, 'home', {}) ?? 'Ana Sayfa';
	@override String get settings => TranslationOverrides.string(_root.$meta, 'settings', {}) ?? 'Ayarlar';
	@override String get save => TranslationOverrides.string(_root.$meta, 'save', {}) ?? 'Kaydet';
	@override String get cancel => TranslationOverrides.string(_root.$meta, 'cancel', {}) ?? 'İptal';
	@override String get loading => TranslationOverrides.string(_root.$meta, 'loading', {}) ?? 'Yükleniyor...';
	@override String get error => TranslationOverrides.string(_root.$meta, 'error', {}) ?? 'Hata';
	@override String get retry => TranslationOverrides.string(_root.$meta, 'retry', {}) ?? 'Tekrar Dene';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'localLanguageCode' => TranslationOverrides.string(_root.$meta, 'localLanguageCode', {}) ?? 'tr_TR',
			'appTitle' => TranslationOverrides.string(_root.$meta, 'appTitle', {}) ?? 'MasterFabric SubServe',
			'home' => TranslationOverrides.string(_root.$meta, 'home', {}) ?? 'Ana Sayfa',
			'settings' => TranslationOverrides.string(_root.$meta, 'settings', {}) ?? 'Ayarlar',
			'save' => TranslationOverrides.string(_root.$meta, 'save', {}) ?? 'Kaydet',
			'cancel' => TranslationOverrides.string(_root.$meta, 'cancel', {}) ?? 'İptal',
			'loading' => TranslationOverrides.string(_root.$meta, 'loading', {}) ?? 'Yükleniyor...',
			'error' => TranslationOverrides.string(_root.$meta, 'error', {}) ?? 'Hata',
			'retry' => TranslationOverrides.string(_root.$meta, 'retry', {}) ?? 'Tekrar Dene',
			_ => null,
		};
	}
}
