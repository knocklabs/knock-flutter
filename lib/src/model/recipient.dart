import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/src/model/knock_object.dart';
import 'package:knock_flutter/src/model/user.dart';

part 'recipient.freezed.dart';

@Freezed(toJson: false, fromJson: false)
sealed class Recipient with _$Recipient {
  Recipient._();

  factory Recipient.user(User user) = RecipientUser;

  factory Recipient.knockObject(KnockObject object) = RecipientKnockObject;

  factory Recipient.fromJson(Map<String, dynamic> json) =>
      const RecipientConverter().fromJson(json);

  Map<String, dynamic> toJson() => const RecipientConverter().toJson(this);
}

class RecipientConverter
    implements JsonConverter<Recipient, Map<String, dynamic>> {
  const RecipientConverter();

  @override
  Recipient fromJson(Map<String, dynamic> json) {
    if (json['__typename'] == 'User') {
      return Recipient.user(User.fromJson(json));
    } else {
      return Recipient.knockObject(KnockObject.fromJson(json));
    }
  }

  @override
  Map<String, dynamic> toJson(Recipient data) {
    return data.when(
      user: (user) => user.toJson(),
      knockObject: (knockObject) => knockObject.toJson(),
    );
  }
}
