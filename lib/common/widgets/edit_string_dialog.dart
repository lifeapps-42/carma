import 'package:flutter/material.dart';

class EditStringDialog extends StatefulWidget {
  final String label;
  final String? initialValue;

  const EditStringDialog({Key? key, required this.label, this.initialValue})
      : super(key: key);
  @override
  _EditStringDialogState createState() => _EditStringDialogState();
}

class _EditStringDialogState extends State<EditStringDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    _controller.text = widget.initialValue ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final String newValue = _controller.text;
    Navigator.pop(context, newValue.isEmpty ? null : newValue);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextField(
        autofocus: true,
        decoration: InputDecoration(labelText: widget.label),
        controller: _controller,
      ),
      actions: [
        ElevatedButton(onPressed: () => _save(), child: Text('Сохранить')),
      ],
    );
  }
}