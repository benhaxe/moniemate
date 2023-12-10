import 'package:flutter/material.dart';
import 'package:moniemate/app/home/presentation/widget/search_app_bar.dart';

class ShipmentSearchScreen extends StatefulWidget {
  const ShipmentSearchScreen({super.key});

  @override
  State<ShipmentSearchScreen> createState() => _ShipmentSearchScreenState();
}

class _ShipmentSearchScreenState extends State<ShipmentSearchScreen> {
  late final _focusNode = FocusNode();
  late final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Future.delayed(
        const Duration(milliseconds: 500),
        () {
          _focusNode.requestFocus();
        },
      );
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        focusNode: _focusNode,
        controller: _controller,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Text('fff'),
          ],
        ),
      ),
    );
  }
}
