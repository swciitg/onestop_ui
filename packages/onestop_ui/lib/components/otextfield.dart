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
  final Widget? suffixIcon;
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
    this.suffixIcon,
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
              OText(
                text: widget.label,
                style:
                    widget.enabled
                        ? OTextStyle.labelMedium.copyWith(color: OColor.gray800)
                        : OTextStyle.labelMedium.copyWith(
                          color: OColor.gray200,
                        ),
              ),

              // External Character Counter
              OText(
                text: "$_currentLength/${widget.maxLength}",
                style:
                    widget.enabled
                        ? OTextStyle.bodySmall.copyWith(color: OColor.gray600)
                        : OTextStyle.bodySmall.copyWith(color: OColor.gray200),
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
            child: TextField(
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
                hintStyle:
                    widget.enabled
                        ? OTextStyle.bodySmall.copyWith(
                          color: OColor.gray600,
                        )
                        : OTextStyle.bodySmall.copyWith(
                          color: OColor.gray200,
                        ),
                border: InputBorder.none,
                suffixIcon:
                    widget.isParagraph
                        ? Align(
                          alignment:Alignment(0, -2),
                          widthFactor: 1,
                          heightFactor: 1,
                          child:
                              _isFocused
                                  ? Padding(
                                    padding: const EdgeInsets.only(
                                      right: 0.0,
                                      top: 0.0,
                                    ),
                                    child: widget.suffixIcon,
                                  )
                                  : null,
                        )
                        : _isFocused
                        ? widget.suffixIcon
                        : null,
                suffixIconColor:
                    (_currentLength <= widget.maxLength)
                        ? OColor.green600
                        : OColor.red500,
                counterText: '',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              ),
            ),
          ),
          OText(
            text: widget.hint.isEmpty ? 'e.g. John Doe' : widget.hint,
            style:
                widget.enabled
                    ? OTextStyle.bodySmall.copyWith(color: OColor.gray600)
                    : OTextStyle.bodySmall.copyWith(color: OColor.gray200),
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
