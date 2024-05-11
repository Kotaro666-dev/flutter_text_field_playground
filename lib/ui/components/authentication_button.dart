import 'package:flutter/material.dart';

class AuthenticationButton extends StatelessWidget {
  const AuthenticationButton({
    super.key,
    required VoidCallback? onPressed,
  }) : _onPressed = onPressed;

  final VoidCallback? _onPressed;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.75,
      child: ElevatedButton(
        onPressed: _onPressed,
        child: const Text(
          'Authenticate',
        ),
      ),
    );
  }
}
