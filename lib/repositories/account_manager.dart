class AccountManager {
  // Private constructor
  AccountManager._internal();

  // Singleton instance
  static final AccountManager _instance = AccountManager._internal();

  // Factory constructor to return the same instance
  factory AccountManager() {
    return _instance;
  }

  // Create account
  void createAccount(String username, String password) {
    // logic
  }

  bool signIn(String username, String password) {
    // logic
    return true; //  return value
  }
}
