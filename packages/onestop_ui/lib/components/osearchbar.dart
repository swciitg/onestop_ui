import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class OSearchBar extends StatefulWidget {
  final String content;
  final bool enabled;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  const OSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
    this.onSubmitted,
    this.content = '',
    this.enabled = true,
  });

  @override
  State<OSearchBar> createState() => _OSearchBarState();
}

class _OSearchBarState extends State<OSearchBar> {
  static const Duration _animationDuration = Duration(milliseconds: 200);
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _isPressed = false;

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

  void _handleClearOrFocus() {
    if (_isFocused) {
      widget.controller.clear();
      widget.onChanged?.call('');
      FocusScope.of(context).unfocus();
    } else {
      FocusScope.of(context).requestFocus(_focusNode);
    }
  } // this function handle the working of icon button on searchbar

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(OSpacing.xs),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown:
            (_) => setState(
              () => _isPressed = true,
            ), //engage behaviour when search bar is tapped
        onTapUp: (_) {
          setState(() => _isPressed = false);
          if (!_focusNode.hasFocus) {
            FocusScope.of(context).requestFocus(_focusNode);
          }
        }, //disengage behaviour when search bar is released from tap
        onTapCancel: () => setState(() => _isPressed = false),
        child: AnimatedContainer(
          duration: _animationDuration,
          decoration: BoxDecoration(
            border: Border.all(color: OColor.gray200, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(OCornerRadius.l)),
            color:
                widget.enabled
                    ? _isPressed
                        ? OColor.gray200
                        : OColor.white
                    : OColor.white,
          ), // this still renders the animation but the color is transparent in case of disabled button
          // this can be improved in future
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: widget.controller,
                  focusNode: _focusNode,
                  enabled: widget.enabled,
                  onChanged: widget.onChanged,
                  onSubmitted: widget.onSubmitted,
                  style: OTextStyle.labelSmall.copyWith(
                    color: _isFocused ? OColor.gray800 : OColor.gray600,
                  ),
                  decoration: InputDecoration(
                    hintText:
                        widget.content.isEmpty
                            ? 'Search here...'
                            : widget.content,
                    hintStyle:
                        widget.enabled
                            ? OTextStyle.labelSmall.copyWith(
                              color: OColor.gray600,
                            )
                            : OTextStyle.labelSmall.copyWith(
                              color: OColor.gray200,
                            ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
              ),
              IconButton(
                onPressed: widget.enabled ? _handleClearOrFocus : null,
                icon: Icon(
                  _isFocused ? TablerIcons.x : TablerIcons.search,
                  size: 24,
                  color:
                      widget.enabled
                          ? _isFocused
                              ? OColor.gray800
                              : OColor.gray600
                          : OColor.gray200,
                ),
                hoverColor: Colors.transparent,
              ),
            ],
          ),
        ),
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
