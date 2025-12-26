// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cricket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CricketController)
const cricketControllerProvider = CricketControllerProvider._();

final class CricketControllerProvider
    extends $NotifierProvider<CricketController, CricketState> {
  const CricketControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cricketControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cricketControllerHash();

  @$internal
  @override
  CricketController create() => CricketController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CricketState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CricketState>(value),
    );
  }
}

String _$cricketControllerHash() => r'97fe808899ac2b07d078f58bcb9e9ab96210035a';

abstract class _$CricketController extends $Notifier<CricketState> {
  CricketState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CricketState, CricketState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CricketState, CricketState>,
              CricketState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
