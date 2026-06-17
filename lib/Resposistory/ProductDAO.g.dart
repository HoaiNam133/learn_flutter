// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductDAO.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productDAO)
final productDAOProvider = ProductDAOProvider._();

final class ProductDAOProvider
    extends $FunctionalProvider<ProductDAO, ProductDAO, ProductDAO>
    with $Provider<ProductDAO> {
  ProductDAOProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productDAOProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productDAOHash();

  @$internal
  @override
  $ProviderElement<ProductDAO> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProductDAO create(Ref ref) {
    return productDAO(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductDAO value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductDAO>(value),
    );
  }
}

String _$productDAOHash() => r'6a5b814ca438fe283348f78e4755d6199e4a1009';
