import 'package:flutter/foundation.dart';

class User {
  const User({
    @required this.uid,
    @required this.displayName,
    @required this.mailID,
  });
  final String uid;
  final String displayName;
  final String mailID;
}
