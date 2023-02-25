import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/auth_repository.dart';

import '../../../core/constants/utils.dart';

final authControllerProvider = Provider(
    (ref) => AuthController(authRepository: ref.read(authRepositoryProvider)));

class AuthController {
  final AuthRepository _authRepository;

  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  void signWithGoogle(BuildContext context) async {
    final user = await _authRepository.signWithGoogle();
    user.fold((l) => showSnackBar(context,l.message), (r) => null);
  }
}
