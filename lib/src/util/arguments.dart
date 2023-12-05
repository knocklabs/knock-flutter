// These values are used as default values on optional fields so we can tell
// the difference between the user providing a null vs an optional field
// having a null value.
const knockDefaultString = '________knockDefaultString________';

extension KnockDefaultString on String? {
  bool get isDefaultValue => this != null && this == knockDefaultString;
}
