import 'dart:developer';
import '../../imports.dart';

class Observers extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final value = newValue is AsyncValue ? (newValue).toShortString() : newValue.toString();
    log('''
{
  "Provider": "${provider.name ?? provider.runtimeType}",
  "NewValue": "$value"
}''', name: 'Provider updated');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    log('''"Provider": "${provider.name ?? provider.runtimeType}"''', name: 'Provider disposed');
    super.didDisposeProvider(provider, container);
  }
}

