library bricks;

import 'package:flutter/foundation.dart';

import 'repositories/repositories.dart';

/// A Brick.
void main() {
  const username = 'player1';
  const password = 'securePassword';

  // Create an account
  AccountManager().createAccount(username, password);

  // Sign in
  bool success = AccountManager().signIn(username, password);

  if (success) {
    debugPrint('Signed in successfully!');
  } else {
    debugPrint('Sign in failed.');
  }
}
