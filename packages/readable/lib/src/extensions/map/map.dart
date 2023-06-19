///
extension RMap<K, V> on Map<K, V> {
  /// * return a new map with the `null` values from the original map only
  Map<K, V> whereNull() {
    final map = <K, V>{};
    for (final entry in entries) {
      if (entry.value == null) {
        map[entry.key] = entry.value;
      }
    }
    return map;
  }

  /// * return a new `Map` with only keys you need it
  Map<K, V?> only(List<K> keys) {
    final holder = <K, V?>{};
    for (final key in keys) {
      holder[key] = this[key];
    }
    return holder;
  }

  /// * return the map without some keys
  Map<K, V?> expect(List<K> keys) {
    final holder = Map<K, V?>.of(this);
    keys.forEach(holder.remove);
    return holder;
  }

  /// * swaps the collection's keys with their corresponding values
  Map<V, K> flip() {
    final Map<V, K> flippedMap = {};
    forEach((key, value) {
      flippedMap[value] = key;
    });
    return flippedMap;
  }

  /// * return the map without key of null values
  Map<K, V> exceptNull() {
    final holder = Map<K, V>.of(this);
    holder.removeWhere((key, value) => value == null);
    return holder;
  }

  /// * return the map without  key of null values and empty
  Map<K, V?> exceptNullAndEmpty() {
    final holder = Map<K, V?>.of(this);
    holder.removeWhere(
      (key, value) => value == null || value is String && value.isEmpty,
    );
    return holder;
  }

  /// * return the map without  key of empty values
  Map<K, V?> exceptEmpty() {
    final holder = Map<K, V?>.of(this);
    holder.removeWhere((key, value) => value is String && value.isEmpty);
    return holder;
  }

  /// return random key or null if map is Empty
  // K? randomKeyOrNull() => isEmpty ? null : keys.random;

  /// return random key or the default if map is empty
  // K randomKeyOr(K def) => randomKeyOrNull() ?? def;

  /// return random key or the use the builder to return the key
  // K randomKeyOrBuilder(K Function() builder) => randomKeyOrNull() ?? builder();

  /// return random key or throw state error
  // K randomKey() =>
  //     randomKeyOrNull() ??
  //     (throw StateError('Map is Empty cant use randomKey()'));

  /// return random value or null if map is Empty
  // V? randomValueOrNull() => isEmpty ? null : values.random;

  /// return random value or the default if map is empty
  // V randomValueOr(V def) => randomValueOrNull() ?? def;

  /// return random value or the use the builder to return the key
  // V randomValueOrBuilder(V Function() builder) =>
  //     randomValueOrNull() ?? builder();

  /// return random value or throw state error
  // V randomValue() =>
  //     randomValueOrNull() ??
  //     (throw StateError('Map is Empty cant use randomValue()'));

  /// return random Entry or null if map is Empty
  // MapEntry<K, V>? randomEntryOrNull() => isEmpty ? null : entries.random;

  /// return random Entry or the default if map is empty
  // MapEntry<K, V> randomEntryOr(MapEntry<K, V> def) =>
  //     randomEntryOrNull() ?? def;

  /// return random Entry or the use the builder to return the key
  // MapEntry<K, V> randomEntryOrBuilder(MapEntry<K, V> Function() builder) =>
  //     randomEntryOrNull() ?? builder();

  /// return random Entry or throw state error
  // MapEntry<K, V> randomEntry() =>
  //     randomEntryOrNull() ??
  //     (throw StateError('Map is Empty cant use randomValue()'));
}
