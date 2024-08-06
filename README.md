# 🧱 Bricks

**Bricks** is a Dart package designed to help game creators easily create accounts for their players. With **Bricks**, players can sign in to monitor leaderboards and other game-related features. It's still in its early stages and under development, but it's packed with potential! 🚀

## ✨ Features

- 📝 **Account Creation:** Simplify the process of creating player accounts.
- 🔐 **Player Sign-In:** Securely sign in players.
- 📊 **Leaderboard Monitoring:** Keep track of player rankings and stats.

## 📦 Usage

Here’s a quick example of how to use **Bricks**:

```dart
import 'package:bricks/bricks.dart';

void main() {
  const username = 'player1';
  const password = 'securePassword';

  // Create an account
  AccountManager.createAccount(username, password);

  // Sign in
  bool success = AccountManager.signIn(username, password);

  if (success) {
    print('Signed in successfully!');
  } else {
    print('Sign in failed.');
  }
}
