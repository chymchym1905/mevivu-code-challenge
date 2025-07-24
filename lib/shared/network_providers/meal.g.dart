// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mealApiHash() => r'acf1c485e20cc0251e3cf69366cc873c873dc57c';

/// See also [mealApi].
@ProviderFor(mealApi)
final mealApiProvider = AutoDisposeProvider<MealApiBase>.internal(
  mealApi,
  name: r'mealApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mealApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MealApiRef = AutoDisposeProviderRef<MealApiBase>;
String _$fetchMealByFirstLetterHash() =>
    r'f164360789a5e6cec89652f905f443e743e28565';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchMealByFirstLetter].
@ProviderFor(fetchMealByFirstLetter)
const fetchMealByFirstLetterProvider = FetchMealByFirstLetterFamily();

/// See also [fetchMealByFirstLetter].
class FetchMealByFirstLetterFamily
    extends Family<AsyncValue<List<MealDetail>>> {
  /// See also [fetchMealByFirstLetter].
  const FetchMealByFirstLetterFamily();

  /// See also [fetchMealByFirstLetter].
  FetchMealByFirstLetterProvider call(
    String letter,
  ) {
    return FetchMealByFirstLetterProvider(
      letter,
    );
  }

  @override
  FetchMealByFirstLetterProvider getProviderOverride(
    covariant FetchMealByFirstLetterProvider provider,
  ) {
    return call(
      provider.letter,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchMealByFirstLetterProvider';
}

/// See also [fetchMealByFirstLetter].
class FetchMealByFirstLetterProvider
    extends AutoDisposeFutureProvider<List<MealDetail>> {
  /// See also [fetchMealByFirstLetter].
  FetchMealByFirstLetterProvider(
    String letter,
  ) : this._internal(
          (ref) => fetchMealByFirstLetter(
            ref as FetchMealByFirstLetterRef,
            letter,
          ),
          from: fetchMealByFirstLetterProvider,
          name: r'fetchMealByFirstLetterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchMealByFirstLetterHash,
          dependencies: FetchMealByFirstLetterFamily._dependencies,
          allTransitiveDependencies:
              FetchMealByFirstLetterFamily._allTransitiveDependencies,
          letter: letter,
        );

  FetchMealByFirstLetterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.letter,
  }) : super.internal();

  final String letter;

  @override
  Override overrideWith(
    FutureOr<List<MealDetail>> Function(FetchMealByFirstLetterRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchMealByFirstLetterProvider._internal(
        (ref) => create(ref as FetchMealByFirstLetterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        letter: letter,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MealDetail>> createElement() {
    return _FetchMealByFirstLetterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchMealByFirstLetterProvider && other.letter == letter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, letter.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchMealByFirstLetterRef
    on AutoDisposeFutureProviderRef<List<MealDetail>> {
  /// The parameter `letter` of this provider.
  String get letter;
}

class _FetchMealByFirstLetterProviderElement
    extends AutoDisposeFutureProviderElement<List<MealDetail>>
    with FetchMealByFirstLetterRef {
  _FetchMealByFirstLetterProviderElement(super.provider);

  @override
  String get letter => (origin as FetchMealByFirstLetterProvider).letter;
}

String _$fetchMealByFilterHash() => r'9736d56643804386d45bf3d069ef442b6d465eb4';

/// See also [fetchMealByFilter].
@ProviderFor(fetchMealByFilter)
const fetchMealByFilterProvider = FetchMealByFilterFamily();

/// See also [fetchMealByFilter].
class FetchMealByFilterFamily extends Family<AsyncValue<List<MealThumb>>> {
  /// See also [fetchMealByFilter].
  const FetchMealByFilterFamily();

  /// See also [fetchMealByFilter].
  FetchMealByFilterProvider call(
    String filterType,
    String filter,
  ) {
    return FetchMealByFilterProvider(
      filterType,
      filter,
    );
  }

  @override
  FetchMealByFilterProvider getProviderOverride(
    covariant FetchMealByFilterProvider provider,
  ) {
    return call(
      provider.filterType,
      provider.filter,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchMealByFilterProvider';
}

/// See also [fetchMealByFilter].
class FetchMealByFilterProvider
    extends AutoDisposeFutureProvider<List<MealThumb>> {
  /// See also [fetchMealByFilter].
  FetchMealByFilterProvider(
    String filterType,
    String filter,
  ) : this._internal(
          (ref) => fetchMealByFilter(
            ref as FetchMealByFilterRef,
            filterType,
            filter,
          ),
          from: fetchMealByFilterProvider,
          name: r'fetchMealByFilterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchMealByFilterHash,
          dependencies: FetchMealByFilterFamily._dependencies,
          allTransitiveDependencies:
              FetchMealByFilterFamily._allTransitiveDependencies,
          filterType: filterType,
          filter: filter,
        );

  FetchMealByFilterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filterType,
    required this.filter,
  }) : super.internal();

  final String filterType;
  final String filter;

  @override
  Override overrideWith(
    FutureOr<List<MealThumb>> Function(FetchMealByFilterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchMealByFilterProvider._internal(
        (ref) => create(ref as FetchMealByFilterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filterType: filterType,
        filter: filter,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MealThumb>> createElement() {
    return _FetchMealByFilterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchMealByFilterProvider &&
        other.filterType == filterType &&
        other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filterType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchMealByFilterRef on AutoDisposeFutureProviderRef<List<MealThumb>> {
  /// The parameter `filterType` of this provider.
  String get filterType;

  /// The parameter `filter` of this provider.
  String get filter;
}

class _FetchMealByFilterProviderElement
    extends AutoDisposeFutureProviderElement<List<MealThumb>>
    with FetchMealByFilterRef {
  _FetchMealByFilterProviderElement(super.provider);

  @override
  String get filterType => (origin as FetchMealByFilterProvider).filterType;
  @override
  String get filter => (origin as FetchMealByFilterProvider).filter;
}

String _$fetchCategoriesHash() => r'7503712a416c669dfe8a57a0b1505ee628ee2977';

/// See also [fetchCategories].
@ProviderFor(fetchCategories)
final fetchCategoriesProvider =
    AutoDisposeFutureProvider<List<String>>.internal(
  fetchCategories,
  name: r'fetchCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchCategoriesRef = AutoDisposeFutureProviderRef<List<String>>;
String _$fetchAreasHash() => r'f7e289aa71cddcdb428a52e20ca92be26c938e0e';

/// See also [fetchAreas].
@ProviderFor(fetchAreas)
final fetchAreasProvider = AutoDisposeFutureProvider<List<String>>.internal(
  fetchAreas,
  name: r'fetchAreasProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchAreasHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchAreasRef = AutoDisposeFutureProviderRef<List<String>>;
String _$fetchIngredientsHash() => r'44eff1827f4d2bd711c3aec22f4c8dcb0ed2587d';

/// See also [fetchIngredients].
@ProviderFor(fetchIngredients)
final fetchIngredientsProvider =
    AutoDisposeFutureProvider<List<Ingredients>>.internal(
  fetchIngredients,
  name: r'fetchIngredientsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchIngredientsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchIngredientsRef = AutoDisposeFutureProviderRef<List<Ingredients>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
