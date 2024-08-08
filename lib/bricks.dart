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
  bool success = AccountManager().signIn(email, password);

  if (success) {
    debugPrint('Signed in successfully!');
  } else {
    debugPrint('Sign in failed.');
  }
}
