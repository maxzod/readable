///
extension RList<T> on List<T?> {
  /// clears the iterable
  /// add all items to the iterable
  // void assignAll(Iterable<T> newItems) {
  //   clear();
  //   addAll(newItems);
  // }

  /// clears the iterable
  /// add   item  to the iterable
  // void assignOne(T newItem) {
  //   clear();
  //   add(newItem);
  // }

  /// if the list contains `item` will remove it else will add it
  // void toggle(T item) => contains(item) ? remove(item) : add(item);

  /// remove first element of the list
  T? removeFirst() => removeAt(0);
}
