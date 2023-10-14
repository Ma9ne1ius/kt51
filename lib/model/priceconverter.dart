abstract class PriceConverter<T, S> {
  S toJson(S value);
  T fromJson(String value);
}
