/// Encodes [value] so it can be used as a single URL path segment.
///
/// Knock identifiers (user ids in particular) are arbitrary strings and may
/// contain characters such as `/`, `?` or `#`.
String pathSegment(String value) => Uri.encodeComponent(value);
