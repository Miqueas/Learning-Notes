abstract class Database<T> {
  T getValue(String key);
  void setValue(String key, T value);
}