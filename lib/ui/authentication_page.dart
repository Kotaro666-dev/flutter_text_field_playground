import 'package:flutter/material.dart';
import 'package:flutter_text_form_field_playground/model/text_field_model.dart';
import 'package:flutter_text_form_field_playground/ui/components/authentication_button.dart';
import 'package:flutter_text_form_field_playground/ui/components/custom_text_field.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Authentication Page'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late TextFieldModel _emailTextFieldModel;
  late TextFieldModel _passwordTextFieldModel;

  bool _isEmailValid = false;
  bool _isPasswordValid = false;

  @override
  void initState() {
    _emailTextFieldModel = TextFieldModel(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      labelText: 'Email',
      hintText: 'example@gmail.com',
      helperText: 'Please include the @ symbol.',
      errorText: null,
    );
    _emailTextFieldModel.focusNode.addListener(_onEmailFocusChanged);

    _passwordTextFieldModel = TextFieldModel(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      labelText: 'Password',
      hintText: 'password1234',
      helperText: 'Please include both alphabet and number.',
      errorText: null,
    );
    _passwordTextFieldModel.focusNode.addListener(_onPasswordFocusChanged);
    super.initState();
  }

  @override
  void dispose() {
    _emailTextFieldModel.focusNode.removeListener(_onEmailFocusChanged);
    _emailTextFieldModel.focusNode.dispose();
    _emailTextFieldModel.controller.dispose();
    _passwordTextFieldModel.focusNode.removeListener(_onPasswordFocusChanged);
    _passwordTextFieldModel.focusNode.dispose();
    _passwordTextFieldModel.controller.dispose();
    super.dispose();
  }

  void _onEmailFocusChanged() {
    if (_emailTextFieldModel.focusNode.hasFocus) {
      return;
    }

    if (_emailTextFieldModel.controller.text.isEmpty) {
      setState(() {
        _isEmailValid = false;
        _emailTextFieldModel = _emailTextFieldModel.copyWith(
          errorText: null,
        );
      });
      return;
    }

    if (!_emailTextFieldModel.controller.text.contains('@')) {
      setState(() {
        _isEmailValid = false;
        _emailTextFieldModel = _emailTextFieldModel.copyWith(
          errorText:
              'Please enter a valid email address with the @ symbol included',
        );
      });
      return;
    }

    setState(() {
      _isEmailValid = true;
      _emailTextFieldModel = _emailTextFieldModel.copyWith(
        errorText: null,
      );
    });
  }

  void _onPasswordFocusChanged() {
    if (_passwordTextFieldModel.focusNode.hasFocus) {
      return;
    }

    if (_passwordTextFieldModel.controller.text.isEmpty) {
      setState(() {
        _isPasswordValid = false;
        _passwordTextFieldModel = _passwordTextFieldModel.copyWith(
          errorText: null,
        );
      });
      return;
    }

    if (!RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9]).+$')
        .hasMatch(_passwordTextFieldModel.controller.text)) {
      setState(() {
        _isPasswordValid = false;
        _passwordTextFieldModel = _passwordTextFieldModel.copyWith(
          errorText:
              'Please enter a valid password with both alphabet and number included',
        );
      });
      return;
    }

    setState(() {
      _isPasswordValid = true;
      _passwordTextFieldModel = _passwordTextFieldModel.copyWith(
        errorText: null,
      );
    });
  }

  void _onPressed() {
    setState(() {
      // Authenticate Email
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            textEditingController: _emailTextFieldModel.controller,
            focusNode: _emailTextFieldModel.focusNode,
            labelText: _emailTextFieldModel.labelText,
            hintText: _emailTextFieldModel.hintText,
            helperText: _emailTextFieldModel.helperText,
            errorText: _emailTextFieldModel.errorText,
            textInputAction: TextInputAction.next,
            onTapOutside: (PointerDownEvent event) {
              _emailTextFieldModel.focusNode.unfocus();
            },
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            textEditingController: _passwordTextFieldModel.controller,
            focusNode: _passwordTextFieldModel.focusNode,
            labelText: _passwordTextFieldModel.labelText,
            hintText: _passwordTextFieldModel.hintText,
            helperText: _passwordTextFieldModel.helperText,
            errorText: _passwordTextFieldModel.errorText,
            textInputAction: TextInputAction.done,
            onTapOutside: (PointerDownEvent event) {
              _passwordTextFieldModel.focusNode.unfocus();
            },
          ),
          const SizedBox(
            height: 40,
          ),
          AuthenticationButton(
            onPressed: (_isEmailValid && _isPasswordValid) ? _onPressed : null,
          ),
        ],
      ),
    );
  }
}
