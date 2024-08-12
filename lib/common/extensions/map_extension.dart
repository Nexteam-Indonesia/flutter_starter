/// Extensions on [Map] of <[K], [V]>
extension ExtensionsOnMapDynamicDynamic<K, V> on Map<K, V> {
  /// Order by keys
  Map<K, V> orderByKeys({required int Function(K a, K b) compareTo}) {
    return Map.fromEntries(entries.toList()..sort((a, b) => compareTo(a.key, b.key)));
  }

  /// Order by values
  Map<K, V> orderByValues({required int Function(V a, V b) compareTo}) {
    return Map.fromEntries(entries.toList()..sort((a, b) => compareTo(a.value, b.value)));
  }
}
