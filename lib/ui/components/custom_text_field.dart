import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required String hintText,
    required String labelText,
    required String helperText,
    required String? errorText,
    required TextEditingController textEditingController,
    required FocusNode focusNode,
    required TextInputAction textInputAction,
    required TapRegionCallback onTapOutside,
  })  : _hintText = hintText,
        _labelText = labelText,
        _helperText = helperText,
        _errorText = errorText,
        _textEditingController = textEditingController,
        _focusNode = focusNode,
        _textInputAction = textInputAction,
        _onTapOutside = onTapOutside;

  final String _hintText;
  final String _labelText;
  final String _helperText;
  final String? _errorText;
  final TextEditingController _textEditingController;
  final FocusNode _focusNode;
  final TextInputAction? _textInputAction;
  final TapRegionCallback _onTapOutside;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.75,
      child: TextField(
        controller: _textEditingController,
        focusNode: _focusNode,
        textInputAction: _textInputAction,
        onTapOutside: _onTapOutside,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: _hintText,
          labelText: _labelText,
          helperText: _helperText,
          errorText: _errorText,
          errorMaxLines: 2,
        ),
      ),
    );
  }
}
