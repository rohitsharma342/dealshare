import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../data/static_data.dart';

enum AuthState {
  initial,
  loading,
  authenticated,
  unauthenticated,
  error,
}

class AuthController extends ChangeNotifier {
  AuthState _state = AuthState.initial;
  UserModel? _user;
  String? _errorMessage;

  AuthState get state => _state;
  UserModel? get user => _user;
  String? get errorMessage => _errorMessage;
  bool get isAuthenticated => _state == AuthState.authenticated;

  Future<void> checkAuthStatus() async {
    _state = AuthState.loading;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    _state = AuthState.unauthenticated;
    notifyListeners();
  }

  Future<bool> login(String email, String password) async {
    _state = AuthState.loading;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    if (email.isNotEmpty && password.isNotEmpty) {
      if (email == 'test@test.com' && password == 'password') {
        _user = StaticData.sampleUser;
        _state = AuthState.authenticated;
        notifyListeners();
        return true;
      } else if (email.contains('@') && password.length >= 6) {
        _user = UserModel(
          id: '2',
          name: email.split('@')[0],
          email: email,
          phone: '+1 000 000 0000',
        );
        _state = AuthState.authenticated;
        notifyListeners();
        return true;
      }
    }

    _errorMessage = 'Invalid email or password. Please try again.';
    _state = AuthState.error;
    notifyListeners();
    return false;
  }

  Future<bool> register(String name, String email, String password) async {
    _state = AuthState.loading;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      _user = UserModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: name,
        email: email,
        phone: '',
      );
      _state = AuthState.authenticated;
      notifyListeners();
      return true;
    }

    _errorMessage = 'Registration failed. Please check your details.';
    _state = AuthState.error;
    notifyListeners();
    return false;
  }

  Future<void> logout() async {
    _state = AuthState.loading;
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 500));

    _user = null;
    _state = AuthState.unauthenticated;
    _errorMessage = null;
    notifyListeners();
  }

  void clearError() {
    _errorMessage = null;
    if (_state == AuthState.error) {
      _state = AuthState.unauthenticated;
    }
    notifyListeners();
  }
}