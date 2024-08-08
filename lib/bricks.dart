library bricks;

import 'package:flutter/foundation.dart';

import 'repositories/repositories.dart';

/// A Brick.
void main() {
  const name = 'name';
  const email = 'player1';
  const password = 'securePassword';

  // Create an account
  AccountManager().createAccount(name, email, password);

  // Sign in
  final success = AccountManager().signIn(email, password);

  // ignore: unnecessary_null_comparison
  if (success != null) {
    debugPrint('Signed in successfully!');
  } else {
    debugPrint('Sign in failed.');
  }
}
