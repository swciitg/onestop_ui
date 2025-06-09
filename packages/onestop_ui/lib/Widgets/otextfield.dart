import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class OTextField extends StatefulWidget {
  final String label;
  final String content;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final Widget suffix;
  final bool enabled;
  final int maxLength;
  final bool isParagraph;

  const OTextField({
    super.key,
    required this.label,
    required this.controller,
    this.content = '',
    this.hint = '',
    this.obscureText = false,
    this.onChanged,
    this.onSubmitted,
    required this.suffix,
    this.enabled = true,
    this.maxLength = 200,
    this.isParagraph = false,
  });

  @override
  State<OTextField> createState() => _OTextFieldState();
}

class _OTextFieldState extends State<OTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  int _currentLength = 0;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  void _updateLength(String value) {
    // ← Method declaration
    setState(() {
      _currentLength = value.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isParagraph ? 170 : 112,
      width: 358,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Label with optional counter
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Label
              Text(widget.label, style: OTextStyle.labelMedium),

              // External Character Counter
              Text(
                '$_currentLength/${widget.maxLength}',
                style: OTextStyle.bodySmall,
              ),
            ],
          ),
          // Text Field Container
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(OCornerRadius.m),
              border: Border.all(
                color:
                    _isFocused
                        ? (_currentLength <= widget.maxLength)
                            ? OColor.green600
                            : OColor.red500
                        : OColor.gray200,
                width: _isFocused ? 2 : 1,
              ),
              color: Colors.transparent,
            ),
            child:Stack(
              children: [TextField(
                controller: widget.controller,
                focusNode: _focusNode,
                keyboardType:
                    widget.isParagraph
                        ? TextInputType.multiline
                        : TextInputType.text,
                obscureText: widget.obscureText,
                enabled: widget.enabled,
                maxLength: widget.maxLength + 1,
                maxLines: widget.isParagraph ? 3 : 1,
                onChanged: (value) {
                  _updateLength(value);
                  if (widget.onChanged != null) {
                    widget.onChanged!(value);
                  }
                },
                onSubmitted: widget.onSubmitted,
                decoration: InputDecoration(
                  hintText:
                      widget.content.isEmpty
                          ? 'Type here ${widget.label.toLowerCase()}...'
                          : widget.content,
                  hintStyle: OTextStyle.bodySmall,
                  border: InputBorder.none,
                  counterText: '',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
            Positioned(
              right: 0,
              top: 0,
              child: widget.suffix,
              ),]
            ),
          ),
          Text(
            widget.hint.isEmpty ? 'e.g. John Doe' : widget.hint,
            style: OTextStyle.bodySmall,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }
}
